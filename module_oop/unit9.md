---
layout: page
title: Unit 9
parent: "Module: Object Oriented Programming"
nav_order: 12
---

<h2>Packaging and Testing</h2>

## e-Portfolio Activities

## Table of Contents
- [Activity 1](#activity-1)
- [Activity 2](#activity-2)

### Activity 1
- What is the cyclomatic complexity of the following piece of code?

```java
public static string IntroducePerson(string name, int age)
{
    var response = $"Hi! My name is {name} and I'm {age} years old.";

    if (age >= 18)
        response += " I'm an adult.";

    if (name.Length > 7)
        response += " I have a long name.";

    return response;
}
```

The cyclomatic complexity of the above code is 3. We can get to this value using the cyclomatic complexity formula: M = E - N + 2P, where M is the cyclomatic complexity, E is the number of edges, N is the number of nodes, and P is the number of connected components. (Schults, 2021). In the above code, we have 7 edges (Potential Outputs), 6 nodes (if Statements, return & concatenation), and 1 connected component(Function).
M = 7 - 6 + (2 * 1) = 3

References:  
Schultz, C. (2021) [Cyclomatic Complexity Defined Clearly, With Examples](https://linearb.io/blog/cyclomatic-complexity/). LinearB.


### Activity 2

- Extend the following program to test accuracy of operations using the assert statement.  

```py
# Python String Operations
str1 = 'Hello'
str2 = 'World!'

# using +
assert str1 + str2 == 'HelloWorld!', "Error: Addition operation is incorrect."

# using *
assert str1 * 3 == 'HelloHelloHello', "Error: Multiplication operation is incorrect."
# uncomment the line below to see a failed test
# assert str1 * 3 == 'HelloHello Hello', "Error: Multiplication operation is incorrect."

print('All tests passed successfully.')
```