---
layout: default
title: "Unit 4"
parent: "Module: Secure Software Development"
nav_order: 6
---

## Exploring Programming Language Concepts

### Programming language concepts
Read Larson (2018) and Weidman (n.d.) then answer the questions below, adding them as evidence to your e-portfolio. You may want to complete this activity in conjunction with or after completing Seminar 2 preparation.

1. What is ReDOS and what part do ‘Evil Regex’ play?
2. What are the common problems associated with the use of regex? How can these be mitigated?
3. How and why could regex be used as part of a security solution?

### Answers

1. ReDoS (Regular Expression Denial of Service) refers to a vulnerability that can be exploited when processing certain malicious regular expressions. It occurs when a regular expression takes a significantly long time to match a specific input, leading to a denial of service. ‘Evil Regex’ plays the part of exploiting regex systems to cause them to fall into a ReDoS state, in this way, if the regex engines crash, they could then potentialy inject malicous expressions into the system.   

2. Catastrophic Backtracking and Insufficient Input Validation are just some of the common problems associated with the use of regex. Implementing regex can be quite complex and requires a great degree of understanding and attention to detail. To be able to mitigate these problems regular patterns have to be carefuly designed, nesting and repetition should be avoided and it is also important to not just rely on regex but additional input validation mechanisms should be in place, such as length checks, input sanitisation, and whitelisting/blacklisting

3. Regex can be utilised as part of a security solution in various ways:
  - Input Validation: Regular expressions can be used to validate and sanitise user inputs to prevent injection attacks (e.g., SQL injection, cross-site scripting).
  - Pattern Matching: Regex can be employed to detect patterns associated with known security threats like credit card numbers, social security numbers, or email addresses.



## Regex
The UK postcode system consists of a string that contains a number of characters and numbers – a typical example is ST7 9HV (this is not valid – see below for why). The rules for the pattern are available from idealpostcodes (2020).
Create a python program that implements a regex that complies with the rules provided above – test it against the examples provided.  
Examples:  
M1 1AA  
M60 1NW  
CR2 6XH  
DN55 1PT  
W1A 1HQ  
EC1A 1BB  
How do you ensure your solution is not subject to an evil regex attack?

### Solution

```py

import re

def validate_uk_postcode(postcode):
    # using the re library we can create a pattern that we can use to validate the postcode
    # This pattern is based on the rules of a UK post code
    pattern = r"^(GIR 0AA|[A-PR-UWYZ](\d{1,2}|[A-HK-Y]\d|\d[A-HJKSTUW])? ?\d[ABD-HJLNP-UW-Z]{2})$"
    return re.match(pattern, postcode)

# Test the examples provided
postcodes = [
    "M1 1AA",
    "M60 1NW",
    "CR2 6XH",
    "DN55 1PT",
    "W1A 1HQ",
    "EC1A 1BB",
    "ST7 9HV"
]

for postcode in postcodes:
    if validate_uk_postcode(postcode):
        print(f"{postcode} is a valid UK postcode.")
    else:
        print(f"{postcode} is not a valid UK postcode.")
```


To ensure the solution is not subject to an evil regex attack, it's important to follow best practices for regex usage:

- Keep the regex pattern as simple and specific as possible to avoid excessive backtracking.
- Avoid using quantifiers such as * and + without considering the potential impact on performance.
- Testinh the regex against various inputs, including edge cases, to ensure it performs well and does not exhibit catastrophic backtracking.


