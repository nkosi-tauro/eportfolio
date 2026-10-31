#!/usr/bin/env bash
# ==============================================================================
# Local Cloud Infrastructure Provisioning & Data Pipeline Script
# Purpose: Simulates cloud provisioning with Docker (network, volume, compute),
#          installs Nginx + the DuckDB CLI in an Ubuntu container, fetches data
#          from the Free Dictionary API, transforms the JSON in SQL, and serves
#          the result as an HTML page.
# Usage:   ./deploy.sh [word]
# Example: ./deploy.sh serendipity
# ==============================================================================

set -euo pipefail

# --- Configuration ---
WORD="${1:-serendipity}"
RESOURCE_GROUP="dict-cloud-rg"
NET_NAME="${RESOURCE_GROUP}-net"
VOL_NAME="${RESOURCE_GROUP}-vol"
CONTAINER_NAME="dict-engine-node"
HOST_PORT="8080"
DUCKDB_VERSION="v2.0.0"

# --- Logging helpers ---
log_info()    { printf '\033[1;34m[INFO]\033[0m %s\n' "$1"; }
log_success() { printf '\033[1;32m[SUCCESS]\033[0m %s\n' "$1"; }
log_warn()    { printf '\033[1;33m[WARN]\033[0m %s\n' "$1"; }
log_error()   { printf '\033[1;31m[ERROR]\033[0m %s\n' "$1" >&2; }

# 1. Prerequisites and input validation
if ! command -v docker >/dev/null 2>&1; then
    log_error "Docker is not installed."
    exit 1
fi
if ! docker info >/dev/null 2>&1; then
    log_error "Docker is installed but the daemon isn't running. Start Docker and retry."
    exit 1
fi

# Letters, spaces, hyphens and apostrophes only. The word never gets pasted into
# SQL or HTML; it travels as an environment variable and is escaped on output.
if [[ ! "$WORD" =~ ^[A-Za-z][A-Za-z\ \'-]{0,63}$ ]]; then
    log_error "Invalid word '$WORD'. Use letters, spaces, hyphens or apostrophes (max 64 chars)."
    exit 1
fi
WORD_URL="${WORD// /%20}"
WORD_URL="${WORD_URL//\'/%27}"

log_info "Initiating deployment sequence for word lookup: '$WORD'"

# 2. Provision virtual network (bridge network)
if ! docker network inspect "$NET_NAME" >/dev/null 2>&1; then
    log_info "Creating virtual network '$NET_NAME'..."
    docker network create --driver bridge "$NET_NAME" >/dev/null
    log_success "Network created."
else
    log_warn "Network '$NET_NAME' already exists. Reusing."
fi

# 3. Provision persistent storage (Docker volume)
if ! docker volume inspect "$VOL_NAME" >/dev/null 2>&1; then
    log_info "Creating persistent storage volume '$VOL_NAME'..."
    docker volume create "$VOL_NAME" >/dev/null
    log_success "Storage volume created."
else
    log_warn "Volume '$VOL_NAME' already exists. Reusing."
fi

# 4. Provision compute container instance
if [[ -n "$(docker ps -q -f "name=^${CONTAINER_NAME}$")" ]]; then
    log_warn "Container '$CONTAINER_NAME' is already running. Reusing."
else
    # Clear out a stopped container with the same name, if any
    docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true
    log_info "Provisioning compute container instance '$CONTAINER_NAME'..."
    if ! docker run -d \
        --name "$CONTAINER_NAME" \
        --network "$NET_NAME" \
        --mount source="$VOL_NAME",target=/data \
        -p "${HOST_PORT}:80" \
        ubuntu:22.04 sleep infinity >/dev/null; then
        log_error "Failed to start container. Is port ${HOST_PORT} already in use?"
        exit 1
    fi
    log_success "Container instance provisioned on port ${HOST_PORT}."
fi

# 5. Bootstrap dependencies (Nginx + DuckDB CLI) inside the container
log_info "Bootstrapping software packages inside compute instance..."
docker exec -i -e DUCKDB_VERSION="$DUCKDB_VERSION" "$CONTAINER_NAME" bash <<'EOF'
set -euo pipefail
if ! command -v nginx >/dev/null 2>&1 || ! command -v curl >/dev/null 2>&1; then
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -qq
    apt-get install -y -qq curl nginx ca-certificates >/dev/null
fi
if ! command -v duckdb >/dev/null 2>&1; then
    ARCH="$(dpkg --print-architecture)"   # amd64 or arm64, matches the host
    curl -fsSL \
        "https://github.com/duckdb/duckdb/releases/download/${DUCKDB_VERSION}/duckdb-cli-linux-${ARCH}.tar.gz" \
        -o /tmp/duckdb.tgz
    tar -xzf /tmp/duckdb.tgz -C /usr/local/bin/
    rm -f /tmp/duckdb.tgz
fi
duckdb --version >/dev/null
EOF
log_success "Environment bootstrapped with Nginx and DuckDB CLI."

# 6. Fetch API data
log_info "Requesting '$WORD' from the Free Dictionary API..."
HTTP_STATUS=$(docker exec -i "$CONTAINER_NAME" \
    curl -sS --max-time 15 -o /data/raw_word.json -w "%{http_code}" \
    "https://api.dictionaryapi.dev/api/v2/entries/en/${WORD_URL}") || HTTP_STATUS="000"

if [[ "$HTTP_STATUS" != "200" ]]; then
    if [[ "$HTTP_STATUS" == "000" ]]; then
        log_error "API request failed (network/DNS/TLS error) for '$WORD'."
    else
        log_error "API returned HTTP $HTTP_STATUS for '$WORD'."
    fi
    docker exec -i -e WORD="$WORD" -e HTTP_STATUS="$HTTP_STATUS" "$CONTAINER_NAME" bash <<'EOF'
set -euo pipefail
esc() { sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' -e "s/'/\&#39;/g" <<<"$1"; }
SAFE_WORD="$(esc "$WORD")"
cat > /var/www/html/index.html.tmp <<HTML
<!DOCTYPE html>
<html lang="en"><head><meta charset="UTF-8"><title>Word not found</title></head>
<body style="font-family:system-ui,sans-serif;padding:2rem;">
<h1>Word not found</h1>
<p>No definition found for <b>${SAFE_WORD}</b> (HTTP ${HTTP_STATUS}).</p>
</body></html>
HTML
mv /var/www/html/index.html.tmp /var/www/html/index.html
service nginx status >/dev/null 2>&1 || service nginx start >/dev/null 2>&1
EOF
else
    # 7. DuckDB ingestion, transformation and HTML generation
    log_info "Executing DuckDB SQL transformation pipeline..."
    docker exec -i -e WORD="$WORD" -e JSON_PATH=/data/raw_word.json "$CONTAINER_NAME" bash <<'EOF'
set -euo pipefail
OUT=/var/www/html/index.html
TMP="${OUT}.tmp"

# -bail stops on the first SQL error so a failure exits non-zero.
# Output goes to a temp file and only replaces the live page on success.
duckdb /data/dictionary.db -bail -noheader -list > "$TMP" <<'SQL'
-- 7a. Record the lookup in a persistent search-history table
CREATE TABLE IF NOT EXISTS search_history (
    word        VARCHAR,
    searched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO search_history (word) VALUES (getenv('WORD'));

-- HTML-escape helper
CREATE TEMP MACRO esc(s) AS
    replace(replace(replace(replace(replace(coalesce(s, ''),
        '&', '&amp;'), '<', '&lt;'), '>', '&gt;'), '"', '&quot;'), '''', '&#39;');

-- Explicit schema so words with missing fields don't break column binding
CREATE TEMP TABLE entries AS
SELECT row_number() OVER () AS ei, *
FROM read_json(getenv('JSON_PATH'), format = 'array', columns = {
    word:      'VARCHAR',
    phonetic:  'VARCHAR',
    phonetics: 'STRUCT(text VARCHAR)[]',
    meanings:  'STRUCT(partOfSpeech VARCHAR, definitions STRUCT(definition VARCHAR, example VARCHAR)[])[]'
});

-- 7b. Document head and styles
SELECT '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dictionary Lookup: ' || esc(getenv('WORD')) || '</title>
    <style>
        body { font-family: system-ui, -apple-system, sans-serif; line-height: 1.6; max-width: 800px; margin: 40px auto; padding: 0 20px; color: #1e293b; }
        h1 { color: #0f172a; border-bottom: 2px solid #e2e8f0; padding-bottom: 12px; font-size: 2.2rem; }
        .phonetic { color: #64748b; font-style: italic; font-size: 1.2rem; font-weight: normal; margin-left: 8px; }
        table { width: 100%; border-collapse: collapse; margin-top: 24px; }
        th, td { text-align: left; padding: 14px; border-bottom: 1px solid #e2e8f0; vertical-align: top; }
        th { background-color: #f8fafc; color: #475569; font-size: 0.9rem; text-transform: uppercase; letter-spacing: 0.05em; }
        .badge { background: #e0e7ff; color: #3730a3; padding: 4px 10px; border-radius: 9999px; font-weight: 600; font-size: 0.8rem; text-transform: uppercase; }
        .example { color: #64748b; font-style: italic; margin-top: 4px; }
        .footer { margin-top: 30px; font-size: 0.85rem; color: #94a3b8; }
    </style>
</head>
<body>';

-- 7c. Word and phonetic header (top-level phonetic from any entry first,
--     then the first phonetics[] item that actually has text)
SELECT '<h1>' || esc(coalesce(word, getenv('WORD'))) || ' <span class="phonetic">'
    || esc(coalesce(
           (SELECT phonetic FROM entries p WHERE coalesce(p.phonetic, '') <> '' ORDER BY p.ei LIMIT 1),
           list_filter(phonetics, lambda x: coalesce(x.text, '') <> '')[1].text,
           ''))
    || '</span></h1>'
FROM entries
ORDER BY ei
LIMIT 1;

-- 7d. Definitions table, in the API's original order
SELECT '<table><thead><tr><th>Part of Speech</th><th>Definition</th></tr></thead><tbody>';

SELECT html FROM (
    SELECT e.ei, ms.mi, ds.di,
           '<tr><td style="width: 20%;"><span class="badge">' || esc(ms.m.partOfSpeech) || '</span></td><td>'
           || esc(ds.d.definition)
           || CASE WHEN coalesce(ds.d.example, '') <> ''
                   THEN '<div class="example">' || esc(ds.d.example) || '</div>'
                   ELSE '' END
           || '</td></tr>' AS html
    FROM entries e,
    LATERAL (SELECT unnest(e.meanings) AS m, generate_subscripts(e.meanings, 1) AS mi) ms,
    LATERAL (SELECT unnest(ms.m.definitions) AS d, generate_subscripts(ms.m.definitions, 1) AS di) ds
)
ORDER BY ei, mi, di;

SELECT '</tbody></table>
<div class="footer">Rendered dynamically via DuckDB &amp; Nginx · '
    || 'lookups recorded: ' || (SELECT count(*) FROM search_history) || '</div>
</body>
</html>';
SQL

mv "$TMP" "$OUT"

# 7e. Ensure Nginx is running
service nginx status >/dev/null 2>&1 || service nginx start >/dev/null 2>&1
EOF
    log_success "DuckDB parsed the JSON, updated /data/dictionary.db and generated index.html."
fi

# 8. Done
URL="http://localhost:${HOST_PORT}"
log_success "Local cloud deployment complete!"
log_info "Serving at: $URL"
