---
layout: page
title: "Unit 4: Cloud Native Technology Part 1"
parent: "Module: Cloud Operations and Management"
nav_order: 6
---


## How automation using scripting helps in cloud operations.    


Bash scripts are an invaluable part of a software engineer's toolkit. They let engineers automate routine administrative tasks without needing a traditional, compiled programming language. In cloud operations, where the same environments are created, configured and torn down many times, this turns slow manual work into fast, repeatable commands (Cooper, 2014). I created a simple bash script (<span style="color:green">deploy.sh</span>) that simulates a cloud environment with Docker, fetches data from the free dictionary API and transforms it with DuckDB.

Scripting ensures that operational work that is manual, repetitive, automatable and scales linearly as a service grows. In cloud environments an example of repeatable work is in the creation of networks and storage. In <span style="color:green">deploy.sh</span>, the script checks whether a resource exists before creating it, so it can be re-run safely without duplicating anything.

```bash
if ! docker network inspect "$NET_NAME" >/dev/null 2>&1; then
    log_info "Creating virtual network '$NET_NAME'..."
    docker network create --driver bridge "$NET_NAME" >/dev/null
else
    log_warn "Network '$NET_NAME' already exists. Reusing."
fi
```

The same few lines replace a sequence of manual console steps. They also behave identically every time, which removes typos and forgotten steps as a source of failure.
AWS lists "perform operations as code" as the first design principle of a well architected system: defining infrastructure and procedures in code limits human error and gives consistent responses to events (AWS, 2022). The <span style="color:green">deploy.sh</span> script applies this locally. A Docker container stands in for a virtual machine, and every setting the "instance" needs is written down in one command.

```bash
docker run -d \
    --name "$CONTAINER_NAME" \
    --network "$NET_NAME" \
    --mount source="$VOL_NAME",target=/data \
    -p "${HOST_PORT}:80" \
    ubuntu:22.04 sleep infinity
```

Because the configuration lives in a file, it can be version-controlled, reviewed by a colleague and recreated on any machine with Docker installed. The environment is documented by the script itself rather than by someone's memory.
Automation is only valuable if it fails safely. A half-finished deployment that reports success is worse than one that stops loudly. Bash supports this through its set options: `-e` exits as soon as a command fails, `-u` treats unset variables as errors, and `-o pipefail` makes a pipeline fail if any command inside it fails (GNU, 2025). <span style="color:green">deploy.sh</span> enables all three and validates its input before touching any infrastructure.

```bash
set -euo pipefail

if [[ ! "$WORD" =~ ^[A-Za-z][A-Za-z\ \'-]{0,63}$ ]]; then
    log_error "Invalid word '$WORD'."
    exit 1
fi
``` 

The script also writes its output to a temporary file and only replaces the live page once every step has succeeded. Users therefore never see a broken page, which mirrors how cloud deployments swap in a new version only after it passes its checks.
Scripts are also the glue between services. In <span style="color:green">deploy.sh</span>, Bash calls the Free Dictionary API, then hands the JSON response to DuckDB. DuckDB's read_json function loads JSON straight into a queryable table, and an explicit columns schema turns any missing keys into NULL instead of an error (DuckDB, 2026).

```sql
CREATE TEMP TABLE entries AS
SELECT row_number() OVER () AS ei, *
FROM read_json(getenv('JSON_PATH'), format = 'array', columns = {
    word:     'VARCHAR',
    phonetic: 'VARCHAR',
    meanings: 'STRUCT(partOfSpeech VARCHAR, definitions STRUCT(definition VARCHAR, example VARCHAR)[])[]'
});
```
In a real cloud setting the same pattern pulls data from a provider's API, transforms it with SQL and publishes the result, all on a schedule with no one at the keyboard.
Scripting turns cloud operations from a sequence of manual steps into a repeatable, reviewable process. In <span style="color:green">deploy.sh</span> we see how we can reduce repetitive actions, infrastructure defined in code is reproducible, fail-fast settings and input validation make failures safe, and simple code automates whole data pipelines. The same principles scale from a laptop to production infrastructure-as-code tools such as Terraform and CloudFormation.

<b>References</b>:  


AWS (2022) Design principles – AWS Well-Architected Framework (2022-03-31). Available at: https://docs.aws.amazon.com/wellarchitected/2022-03-31/framework/oe-design-principles.html (Accessed: 31 October 2026).  

Cooper, M. (2014) Advanced Bash-Scripting Guide. An in-depth exploration of the art of shell scripting. Available at: https://tldp.org/LDP/abs/html/index.html (Accessed: 31 October 2026)  

DuckDB (2026) Loading JSON – DuckDB 2.0 documentation. Available at: https://duckdb.org/docs/2.0/data/json/loading_json (Accessed: 31 October 2026).  

GNU (2025) GNU Bash Reference Manual: 4.3.1 The Set Builtin. Available at: https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html (Accessed: 31 October 2026).


<b>Additional Resources For Programming</b>:

Git Shell Colouring: https://gist.github.com/vratiu/9780109 

Bash Scripting Tutorial – Linux Shell Script and Command Line for Beginners: https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/   

Write Your Own Bash Scripts for Automation [Tutorial]:
https://www.youtube.com/watch?v=PPQ8m8xQAs8   

