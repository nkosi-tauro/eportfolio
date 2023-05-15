---
layout: page
title: "Unit 4"
parent: "Module: Object Oriented Programming"
nav_order: 7
---

<h2>Applying a UML Model to a Program Implementation: UML in Practice</h2>

## Table of contents
- [Activities](#activities)
- [Reflection](#reflection)

---

## [Activities](#activities)
### Class Diagram
-Develop a class diagram using UML to support a system with basic employee-related functionality. This should include the retention of employee details and allowing an employee to book a day of annual leave

![class diagram](../assets/images/emp_class.png)

### Python Program
- Develop the Python program to implement the class model.

```py
# Employee details and annual leave
class Employee():

  def __init__(self, name, surname, empID, leave):
    self.name = name 
    self.surname = surname 
    self._empID = empID 
    self._leave = leave 

  def scheduleLeave(self, days):
    if days <= self._leave:
      self._leave -= days
      print("You have scheduled annual leave")
    else:
      print("You have taken too much leave")
  

# Create an instance of the Employee class
employee1 = Employee("Nkosi", "T", 1234, 20)
# Print the employee details
print(f"I am {employee1.name} {employee1.surname}, my employee ID is {employee1._empID} and I have {employee1._leave} days of annual leave left")
# Book annual leave
employee1.scheduleLeave(21)
```

---

## Reflection
In this unit we explored a new UML model, the class diagram. Implementing a program while using a class diagram showed more importance on software planning and how much effort goes into the process. The class diagram is a very useful tool in the software development process and I plan to be using it in my future projects. 

In the additional reading section, a number of IDEs and tools were mentioned. I prefer and use Visual Studio Code as my IDE. I have used it for a number of projects and its support for various languages and tools makes it the all-in-one IDE for me.
