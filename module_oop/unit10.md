---
layout: page
title: Unit 10
parent: "Module: Object Oriented Programming"
nav_order: 13
---

<h2>Testing Code in Practice</h2>

## Table of Contents
- [Seminar Preparation](#seminar-preparation)
- [Reflection](#reflection)


## Seminar Preparation

## Activity 1
- Run the following code using pylint and identify the errors.  

```py
def factorial (x)
    if x == 1:
        return 1

    else:
        return (x * factorial(x-1))

num = 3
print("The factorial of", num, "is", factorial(num)) 
```
pylint output:
![pylint](../assets/images/pylint.png)

---

## Activity 2
- In ‘Packaging & Testing’ (unit 9), we examined the use of documentation to support code developments. Add appropriate commenting and documentation for the code below.  

```py
def add(x, y):
  """This function adds two numbers"""
  return x + y


def subtract(x, y):
  """This function subtracts two numbers"""
  return x - y


def multiply(x, y):
  """This function multiplies two numbers"""
  return x * y


def divide(x, y):
  """This function divides two numbers"""
  return x / y

# Print the available operations
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
# While loop to make the calculator run until the user wants to stop
while True:
    choice = input("Enter choice(1/2/3/4): ")
    if choice in ('1', '2', '3', '4'):
        # Take input from the user and convert it to float
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))
        # Check which operation the user wants to perform
        if choice == '1':
            print(num1, "+", num2, "=", add(num1, num2))
        elif choice == '2':
            print(num1, "-", num2, "=", subtract(num1, num2))
        elif choice == '3':
            print(num1, "*", num2, "=", multiply(num1, num2))
        elif choice == '4':
            print(num1, "/", num2, "=", divide(num1, num2))
    # break the while loop if answer is no
    next_calculation = input("Let's do next calculation? (yes/no): ")
    if next_calculation == "no":
        break
    # If the user enters anything other than the available options print an error message
    else:
        print("Invalid Input")
```

---

## Activity 3  
- Integrate unit tests into the code in Activity 2 to test operation of the methods.

```py	
# Import functions from unit10.py (Activity 2) to create unit tests 
from unit10 import add, subtract, multiply, divide
import unittest

class TestUnit10(unittest.TestCase):
    # Test the add function
    def test_add(self):
        self.assertEqual(add(15, 11), 26)
    # Test the subtract function
    def test_subtract(self):
        self.assertEqual(subtract(34, 20), 14)
    # Test the multiply function
    def test_multiply(self):
        self.assertEqual(multiply(20, 5), 100)
    # Test the divide function
    def test_divide(self):
        self.assertEqual(divide(10, 5), 2)
        # Test the divide function with a zero denominator
        # self.assertEqual(divide(5, 0), "Error: Cannot divide by zero")

if __name__ == '__main__':
    unittest.main()

```

**References**:  
Silvera, O., S.(2022) A Beginner’s Guide to Unit Tests in Python. Available from https://www.dataquest.io/blog/unit-tests-python/
[Accessed 10 March 2022]

---

## Reflection
In this unit we tackled unit testing, using linters(pylint) and code documentation before releasing to stakeholders. 

In unit 7 I had made reference to how linters can sometimes be quite aggressive [Reflection](../unit7/#reflection)(paragraph 3) in how they flag up errors and code styling. I found this to be most true when I was working on [Activity 2](#activity-2). I prefer `1 Tab` indentation as I'm used to that style whereas pylint requires `2 Tab` indentation and I found it quite annoying to have to change my code to suit pylint. 

Reading more into unit testing and its benefits made me do more research and I discovered a software development methodology called `Test Driven Development (TDD)`. TDD is software development approach in which test cases are developed to specify and validate what the code will do (Hamilton, 2023). Developing tests before writing code at first seems like a weird idea but it actually makes sense. It allows you to think about the code you are writing, the different scenarios that your code will be used in and how it will handle those scenarios.

Code documentation is a very important part of software development. It allows other developers to understand what your code does and how it works. I remember when I first started to learn programming, when approaching web frameworks, it was known that the first iteration of Angular `Angularjs` had some of the worst documentation which made it very difficult to learn. Which ruined an otherwise great framework.



**References**:  

Hamilton, T.(2023) What is Test Driven Development (TDD)? Example. Available from https://www.guru99.com/test-driven-development.html [Accessed 10 March 2023]