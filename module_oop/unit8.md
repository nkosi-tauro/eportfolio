---
layout: page
title: Unit 8
parent: "Module: Object Oriented Programming"
nav_order: 11
---

<h2>Data Structures and Data Search in Practice</h2>

## Table of Contents
- [Seminar Preparation](#seminar-preparation)
- [Reflection](#reflection)


## Seminar Preparation
- Activity 1: Errors
  ```py
  import math
  def calculation(a, b):
    try:
      return a + b, a / b, math.sqrt(a), math.sqrt(b)
    except ValueError:
      # handle ValueError exception
      return "Value Error: Please input positive numbers only!"
    except (TypeError, ZeroDivisionError):
      # handle multiple exceptions
      # TypeError and ZeroDivisionError
      errorString = "Type Error: Check your input! Please input numbers only! \nZero Division Error: You cannot divide by zero! Please input a different number!"
      return errorString
    except: # catch all
      return "Something went wrong! Please try again!"
    
  print(calculation(0, 0))
  ```

--- 

- Activity 2: Data Structures 
  - Explain a use for each of these set operations within the context of your summative assessment (Driverless Car).
      - Union
      - Intersection
      - Difference
      - Symmetric Difference

      **Union**: The union of two sets A and B is a new set containing all the elements that are in either A or B (Dsouza, 2018). In a driverless car, the union of two sets might be useful when combining information from multiple sources. For example, the car's sensors might provide one set of data about the environment (e.g the position of other cars), while a GPS system might provide another set of data (e.g the location of traffic jams). By taking the union of these two sets, the car's computer system could create a more complete picture of the driving conditions, allowing it to make more informed decisions about how to navigate.

      **Intersection**: The intersection of two sets A and B is a new set containing only the elements that are in both A and B (Dsouza, 2018). In a driverless car, the intersection of two sets might be useful for determining the overlap between different sets of rules or regulations. For example, one set of rules might specify how to navigate around pedestrians, while another set might specify how to navigate through a roundabout. By taking the intersection of these two sets, the car's computer system could determine the specific rules that apply when encountering a pedestrian in a roundabout, ensuring that it behaves correctly.

      **Difference**: The difference between two sets A and B is a new set containing only the elements that are in A but not in B (Dsouza, 2018). In a driverless car, the difference between the two sets might be useful for excluding certain elements from consideration. For example, if the car's sensors detect a large obstacle in the road ahead, it might want to exclude that obstacle from its calculations of where to go. By taking the difference between the set of all obstacles and the set containing the specific obstacle in question, the car's computer system could more easily plan a route that avoids the obstacle.

      **Symmetric difference**: The symmetric difference between two sets A and B is a new set containing only the elements that are in either A or B, but not in both (Dsouza, 2018). In a driverless car, the symmetric difference between two sets might be useful for identifying conflicting information. For example, if one sensor indicates that the road ahead is clear, but another sensor indicates a pedestrian crossing, there may be a conflict. By taking the symmetric difference between the two sets, the car's computer system could identify the conflicting information and determine how to resolve the conflict (e.g by slowing down and scanning the area more carefully).

      **References**:

      Dsouza, J.(2018) Python Sets – Operations and Examples. Available from: https://www.freecodecamp.org/news/python-set-operations-explained-with-examples/ [Accessed 09 March 2023].

---

  - Write a Python program to carry out a linear search on a list data structure.  
  ```python
      # linear Search through a list
      def search(input, name):
        # loop through the list from left to right until the name is found
        for i in range(len(input)):
          if input[i] == name:
            return f"The name {name} found at index {i}!"
        return f"The name {name} was not found in the input list."

      print(search(["Eric", "Calvin", "John", "Mathew", "Luke"], "John"))
  ```
---

## Reflection
In this unit, we learned about exceptions and how to handle them, the importance of learning algorithm design and the different set operations and how they can be used to manipulate data.

With regard to python exceptions, learning about them has been very useful. Being able to handle potential errors that the end user may encounter and or trigger is a valuable skill for developers. I would much rather see this error *"Type Error: Check your input! Please input numbers only!"* than a long error message that the user may not understand especially if they are not familiar with programming e.g *"TypeError: unsupported operand type(s) for +: 'int' and 'str'"*.

I also learnt about the importance of algorithm design and how it can help in spotting flaws in the code(Kuk, *et al* 2019) and improve the efficiency of the code. This is something that I will definitely be using in the future and also be teaching my students. Understanding how to write efficient code is very important as it can help to reduce the amount of time it takes to run the code and also reduce the amount of resources that are used to run the code. For example, being able to design an efficient search algorithm that has to scour massive amounts of data points can be very useful in the real world.

On learning more about Sets(Dsouza, 2018) (a python data structure I barely use), and the various set operations, I now see its *power* and how it can make previously tedious operations and or inefficient code much faster. For example sets only store unique data points, so a set plus good usage of python exceptions and you could potentially have a simpler way of making sure users cannot enter duplicate data points into a database.

**References**:  
Kuk, K., Milic, P., Spalević, P. & Gocic, M. (2019) Algorithm design in Python for cybersecurity. Electrotechnical and Computer Science Conference. 

Dsouza, J.(2018) Python Sets – Operations and Examples. Available from: https://www.freecodecamp.org/news/python-set-operations-explained-with-examples/ [Accessed 09 March 2023].