---
layout: default
title: "Unit 10"
parent: "Module: Secure Software Development"
nav_order: 12
---
## From Distributed Computing to Microarchitectures

## Faceted Data
Read Schmitz et al (2016) article about faceted data.

- Do you think this is a good approach to protect systems from data leakage? What are the pros and cons?
- Create a basic outline design of how you would create such a system in Python. 

*Note: This article was quite difficult to read, it was quite complex, as a recommendation the Tutor stated we just had to go through the abstract and introduction.*  
### Answers
- The approach described by the authors seems to be a good approach, but it is also quite complex. I would list the compatibility of their solution to integrate into other languages without any need for modification to be a pro including the expressive way to handle control and data paths while utilizing Haskell. However, their approach utilizes Haskell, a functional programming language, this increases the complexity as although their solution is compatible with other languages, implementing a solution that programmers struggle to understand may become more of a hindrance and security issue as maintaining the codebase will become cumbersome. 

- Basic Design Outline in Python:
  - Identify Sensitive Data: Clearly define the data that needs protection and determine the specific information flow policies to be enforced.
  - Test and Validate: Design and execute comprehensive test cases to ensure the functionality and security guarantees of the system. Test different scenarios involving various privilege levels and sensitive data to validate the expected behaviour.
  - Documentation: Provide thorough documentation, including clear explanations of the concepts, API references, and usage guidelines. This documentation will help developers understand and effectively utilize the library securely.