---
layout: default
title: "Unit 3"
parent: "Module: Secure Software Development"
nav_order: 5
---

## Programming Languages: History, Concepts & Design

### Team Discussion: What is a Secure Programming Language?
You should read Chapter 2,6,7,8 of the course text (Pillai, 2017) and Cifuentes & Bierman (2019) and then answer the questions below.

- What factors determine whether a programming language is secure or not?
- Could Python be classed as a secure language? Justify your answer.
- Python would be a better language to create operating systems than C. Discuss.

### Answers

1. Quite a number of factors determine whether a programming language is secure or not. 
  - Language Design: The design of the language, including features such as memory management, type safety, and error handling mechanisms, can significantly impact its security.
  - Security Features: Built-in security features, such as sandboxing, access control mechanisms, encryption libraries, and secure standard libraries, contribute to a language's security.
  - Developer Practices: The security of a programming language also depends on how developers utilise the language and follow secure coding practices. Even the most secure language can be misused if developers do not adhere to proper security practices, such as input validation, secure data handling, and vulnerability patching.

2. Python can be classed as a secure language. The python programming language contains various feature sets that secure it. 
  - Memory Management: Python utilises automatic memory management (garbage collection), reducing the risk of common memory-related vulnerabilities like buffer overflows and memory leaks.
  - Standard Libraries: Python offers a rich set of standard libraries, including security-related modules such as cryptography and SSL/TLS support, which can be leveraged to implement secure solutions.
  - Community Support: Python has a large and active community that actively identifies and addresses security vulnerabilities in the language itself and its associated libraries. Regular security patches and updates help maintain the language's security.

3. No, Python would not be a better language to create operating systems than C. This is due to:
  - Python being a high level language it abstracts away many low-level operations, making it less suitable for OS development.
  - Python is an interpreted language, which means it typically has slower execution speed compared to lower-level languages like C.
  - Code Size and Footprint: Operating systems often require tight control over memory usage and have strict size limitations. C allows for more precise memory management and produces smaller executables, making it more suitable for operating system development.

In Summary Operating systems require a low-level language to optimise for performance, size and compatibility.  This makes C a preferred language for OS development. 