---
layout: default
title: "Unit 6"
parent: "Module: Secure Software Development"
nav_order: 8
---
## Using Linters to Support Python Testing  
<br> 


## Assignment
In this unit, the focus is on the first objective/deliverable, the design proposal report.
To view the first Assignment and more details head over to <a href="https://nkosi-tauro.github.io/eportfolio/module_ssd/assignment1.html">Development Team Project: Design Document</a>




## Table of Contents
- [Question 1](#question-1)
- [Question 2](#question-2)
- [Question 3](#question-3)
- [Question 4](#question-4)

### Question 1  
Run styleLint.py in Codio.

What happens when the code is run? Can you modify this code for a more favourable outcome? What amendments have you made to the code?

Original code:
```py
def factorial(n):
""" Return factorial of n """
if n == 0:
return 1
else:
return n*factorial(n-1)
```

### Answer
Trying to run the above code results in an `IndentationError`.
```
""" Return factorial of n """
^
IndentationError: expected an indented block after function definition on line 1
```

To fix it we can follow Pythons Indentation rules and indent the code according to the scope.  
function -> conditional statements.  
This will be the new code:
```py
def factorial(n):
    """ Return factorial of n """
    if n == 0:
        return 1
    else:
        return n*factorial(n-1)
```

### Question 2

`pip install pylint`  
>Run
>
>pylint 
on pylintTest.py

Review each of the code errors returned. Can you correct each of the errors identified by pylint?

Before correcting the code errors, save the pylintTest.py file with a new name (it will be needed again in the next question).

Original code:
```py
import string
 
shift = 3
choice = raw_input("would you like to encode or decode?")
word = (raw_input("Please enter text"))
letters = string.ascii_letters + string.punctuation + string.digits
encoded = ''
if choice == "encode":
  for letter in word:
    if letter == ' ':
      encoded = encoded + ' '
    else:
      x = letters.index(letter) + shift
      encoded=encoded + letters[x]
    if choice == "decode":
      for letter in word:
        if letter == ' ':
            encoded = encoded + ' '
        else:
          x = letters.index(letter) - shift
          encoded = encoded + letters[x]

print encoded
```
### Answer
List of Errors Returned:  
```
************* Module test
test.py:23:1: E0001: Parsing failed: 'Missing parentheses in call to 'print'. Did you mean print(...)? (<unknown>, line 23)' (syntax-error)

************* Module test
test.py:2:0: C0303: Trailing whitespace (trailing-whitespace)
test.py:5:0: C0325: Unnecessary parens after '=' keyword (superfluous-parens)
test.py:9:0: W0311: Bad indentation. Found 2 spaces, expected 4 (bad-indentation)
test.py:10:0: W0311: Bad indentation. Found 4 spaces, expected 8 (bad-indentation)
test.py:11:0: W0311: Bad indentation. Found 6 spaces, expected 12 (bad-indentation)
test.py:12:0: W0311: Bad indentation. Found 4 spaces, expected 8 (bad-indentation)
test.py:13:0: W0311: Bad indentation. Found 6 spaces, expected 12 (bad-indentation)
test.py:14:0: W0311: Bad indentation. Found 6 spaces, expected 12 (bad-indentation)
test.py:15:0: W0311: Bad indentation. Found 4 spaces, expected 8 (bad-indentation)
test.py:16:0: W0311: Bad indentation. Found 6 spaces, expected 12 (bad-indentation)
test.py:17:0: W0311: Bad indentation. Found 8 spaces, expected 16 (bad-indentation)
test.py:18:0: W0311: Bad indentation. Found 12 spaces, expected 20 (bad-indentation)
test.py:19:0: W0311: Bad indentation. Found 8 spaces, expected 16 (bad-indentation)
test.py:20:0: W0311: Bad indentation. Found 10 spaces, expected 20 (bad-indentation)
test.py:21:0: W0311: Bad indentation. Found 10 spaces, expected 20 (bad-indentation)
test.py:23:0: C0304: Final newline missing (missing-final-newline)
test.py:1:0: C0114: Missing module docstring (missing-module-docstring)
test.py:3:0: C0103: Constant name "shift" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:4:9: E0602: Undefined variable 'raw_input' (undefined-variable)
test.py:5:8: E0602: Undefined variable 'raw_input' (undefined-variable)
test.py:6:0: C0103: Constant name "letters" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:7:0: C0103: Constant name "encoded" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:11:6: C0103: Constant name "encoded" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:13:6: C0103: Constant name "x" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:14:6: C0103: Constant name "encoded" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:18:12: C0103: Constant name "encoded" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:20:10: C0103: Constant name "x" doesn't conform to UPPER_CASE naming style (invalid-name)
test.py:21:10: C0103: Constant name "encoded" doesn't conform to UPPER_CASE naming style (invalid-name)

```  

To fix the code we can follow each error above and provide a fix.   

Fixed Code:
```py
import string

# python 3 uses in input() method for std in, therefore raw_input should be input

shift = 3
choice = input("would you like to encode or decode? ")
# removed the unecessary parenthesis
word = input("Please enter text ")
letters = string.ascii_letters + string.punctuation + string.digits
encoded = ''
# fixed indentation based on the nested scopes
if choice == "encode":
    for letter in word:
        if letter == ' ':
            encoded = encoded + ' '
        else:
            # update x variable name to shifted_variable
            shifted_variable = letters.index(letter) + shift
            encoded = encoded + letters[shifted_variable]
        if choice == "decode":
            for letter in word:
                if letter == ' ':
                    encoded = encoded + ' '
                else:
                    shifted_variable = letters.index(letter) - shift
                    encoded = encoded + letters[shifted_variable]

print(encoded)

```

### Question 3

`pip install flake8`
>Run
>
>flake8 
on pylintTest.py

Review the errors returned. In what way does this error message differ from the error message returned by pylint?

Run flake8 on metricTest.py. Can you correct each of the errors returned by flake8? What amendments have you made to the code?  

### Answer
Returned errors on `pylintTest.py`
```
test.py:23:2: E999 SyntaxError: Missing parentheses in call to 'print'. Did you mean print(...)?
test.py:2:1: W293 blank line contains whitespace
test.py:4:10: F821 undefined name 'raw_input'
test.py:5:9: F821 undefined name 'raw_input'
test.py:9:3: E111 indentation is not a multiple of 4
test.py:11:7: E111 indentation is not a multiple of 4
test.py:13:7: E111 indentation is not a multiple of 4
test.py:14:7: E111 indentation is not a multiple of 4
test.py:14:14: E225 missing whitespace around operator
test.py:16:7: E111 indentation is not a multiple of 4
test.py:20:11: E111 indentation is not a multiple of 4
test.py:21:11: E111 indentation is not a multiple of 4
test.py:23:15: W292 no newline at end of file
```

The difference is less errors, this seems to be because flake8 only returns code breaking errors (indendation, code errors etc) whereas pylint by default will also return issues that are not conforming to Pep8 rules (or the defined rule set) such as variable names not properly defined (UPPER_CASE, snake_case etc) or missing docstrings from the document heading and so forth.

**Problem 2**

metricTest.py

The file had a number of issues, running this in flake8 produced quite a number of errors ranging from invalid syntax, invalid characters, indentation issues and so forth.  

### Answer
To fix the code, I started by removing the flagged invalid characters, fixed the syntax issues, used the Python code formatter to fix the indentation, added some missing colons, added missing 'super().init(x, y)' call in the constructor of class D to properly initialize the base class and removed all unnecessary empty lines.    

Fixed Code:
```py
import random


def fn(x, y):
    """A function which performs a sum"""
    return x + y


def find_optimal_route_to_my_office_from_home(start_time, expected_time, favorite_route='SBS1K', favorite_option='bus'):
    d = (expected_time - start_time).total_seconds() / 60.0

    if d <= 30:
        return 'car'
    elif 30 < d < 45:
        return ('car', 'metro')
    elif d > 45:
        if d < 60:
            return ('bus:335E', 'bus:connector')
        elif d > 80:
            return random.choice(('bus:330', 'bus:331', ':'.join((favorite_option, favorite_route))))
        elif d > 90:
            return ':'.join((favorite_option, favorite_route))


class C(object):
    """A class which does almost nothing"""

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def f(self):
        pass

    def g(self, x, y):
        if self.x > x:
            return self.x + self.y
        elif x > self.x:
            return x + self.y


class D(C):
    """D class"""

    def __init__(self, x, y):
        super().__init__(x, y)

    def f(self, x, y):
        if x > y:
            return x - y
        else:
            return x + y

    def g(self, y):
        if self.x > y:
            return self.x + y
        else:
            return y - self.x

```

### Question 4
>Run
mccabe 
on sums.py. 

What is the result?

### Result:
```
1:0: 'test_sum' 1
If 4 2
```

>Run
mccabe 
on sums2.py. 

What is the result?

### Result:
```
2:0: 'test_sum' 1
5:0: 'test_sum_tuple' 1
If 8 2
```

What are the contributors to the cyclomatic complexity in each piece of code?

### Answers:
Sums.py
>There is only one function here and no decision points, so only the function.

Sums2.py
>We have 3 independent paths with no decisions points, so each function contributes to the cyclomatic complexity

