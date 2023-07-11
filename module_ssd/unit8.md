---
layout: default
title: "Unit 8"
parent: "Module: Secure Software Development"
nav_order: 10
---

## Cryptography and Its Use in Operating Systems
<br>

Read the Cryptography with Python blog at [tutorialspoint](https://www.tutorialspoint.com/cryptography_with_python/index.htm). Select one of the methods described/ examples given and create a python program that can take a short piece of text and encrypt it.

Answer the following questions in your e-portfolio:

- Why did you select the algorithm you chose?
- Would it meet the GDPR regulations? Justify your answer.

### Answers:

_Python Program that encrypts text, it uses the RSA algorithm_.
```py
from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP

def rsa_encrypt(text, public_key):
    cipher = PKCS1_OAEP.new(public_key)
    encrypted_text = cipher.encrypt(text.encode())
    return encrypted_text

# Generate RSA key pair
key = RSA.generate(2048)

# Get public key
public_key = key.publickey()

# Text to encrypt
plaintext = "Hello, World!"

# Encrypt the text
encrypted_text = rsa_encrypt(plaintext, public_key)

print("Encrypted Text:", encrypted_text)
```

I chose the RSA algorithm because I frequently use it for tasks like generating SSH keys for GitHub and authorizing Terminal programs. Despite my regular usage, I didn't have a clear understanding of how it actually works. To gain better insight, I decided to experiment with encrypting a simple text using RSA.

The RSA algorithm complies with GDPR regulations, although the GDPR itself does not provide specific technical guidelines for securing data (General Data Protection Regulation (GDPR), 2019). Nonetheless, the RSA algorithm has a strong track record of effectively encrypting sensitive data and is considered secure.



References:   
General Data Protection Regulation (GDPR). (2019). Encryption | General Data Protection Regulation (GDPR). Available at: https://gdpr-info.eu/issues/encryption/.

‌