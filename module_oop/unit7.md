---
layout: page
title: Unit 7
parent: "Module: Object Oriented Programming"
nav_order: 10
---

<h2>Debugging / Error Handling, Data Structures and Data Search</h2>

## Table of Contents
- [Assignment](#assignment)
- [Activities](#activities)
- [Reflection](#reflection)

---
## [Assignment](#assignment)
This unit also inlcuded an assignment. We were tasked to present a system design proposal for a driverless car.  

View the assignment and its reflection [here](/eportfolio/module_oop/system_design/)

---
## [Activities](#activities)
- Create a nested dictionary of data on cars within a Car class. Extend the program to work with the dictionary by calling the following methods:
  - items()
  - keys()
  - values()

```python
class Car():
  def __init__(self, make, model, year, engine_type, engine_size, fuel_type):
    self.car_data = {
      "make": make,
      "model": model,
      "year": year,
      "engine": {
        "type": engine_type,
        "size": engine_size,
        "fuel": fuel_type
      }
    }

  def get_car_items(self):
    return self.car_data.items()

  def get_car_keys(self):
    return self.car_data.keys()

  def get_car_values(self):
    return self.car_data.values()


Tesla = Car("Tesla", "Model S", 2019, "electric", 100, "electricity")
print(Tesla.get_car_items())
print(Tesla.get_car_keys())
print(Tesla.get_car_values())

```

---

## [Reflection](#reflection)
In this unit we covered a lot of ground. We learned about debugging and error handling, utilizing tools such as linters to help us write clean code and this unit also included the first assignment of the module. We also touched on search algorithms. 

Knowing how to debug and handle errors is an important skill for any developer. It is important to be able to identify and fix errors in code. This can be done using a debugger. A debugger is a tool that can be used to step through code and identify where errors are occurring.

Python offers various tools for linting and formatting code. These tools help to ensure that code is written in a consistent manner and that it is readable. Linters can also help to identify potential errors in code. A common linter for Python is Pylint. 
Other alternatives include Flake8 and Black.

In my opinion, I would advise developers (especially junior developers) to try out various linters and formatters and see which one works best for them. Some linters can be quite aggressive and can flag up a lot of errors and this can be/get quite overwhelming.


**Resources** 
- [Debugging Strategies](https://www.cs.cornell.edu/courses/cs312/2006fa/lectures/lec26.html)
- [Debugging](https://www.w3schools.com/python/python_try_except.asp)
- [Linting](https://realpython.com/python-code-quality/)
- [Linting](https://www.freecodecamp.org/news/what-is-linting-and-how-can-it-save-you-time/)

