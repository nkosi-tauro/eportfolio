---
layout: default
title: "Assignment 2: System Implementation"
parent: "Module: Object Oriented Programming"
nav_order: 2
---

<h2>System Implementation</h2>
<br>

**Assignment Brief**: You are now required to implement the code designed to support the operation of a driverless car as described in Unit 7. This should be representative of the use case diagram, activity diagram, class diagram, sequence diagram, and state transition diagram defined in your design document. Please do modify any of the diagrammatic capabilities in response to advancements in your thought process since the design document was submitted, or in response to feedback received.

Please write and test your scripts in Codio using the Python workspace created for you. All code scripts must be documented, explained, and follow best practices. You should ensure that your code is fully tested and provide evidence of your testing. Use Python's assert statement to achieve automated testing, in addition to any other types of testing you believe are useful in this deployment.

You can view the driverless car program code here: [Driverless Car: Tesla At Home Edition](https://github.com/nkosi-tauro/oop_system/blob/master/system_implementation/driverless_car.py)



## Learning Objectives
- Prepare UML models to support the object oriented design process.
- Apply data structures to support the storage of data in a variety of ways.
- Implement data search algorithms to process stored data in the most efficient approaches.

## Reflection
This was quite a difficult assignment, as I did not do too well (or as I had expected) in the system design proposal, I had to re-think my approach to implementing the OOP structure for my driverless car program. A definite saving grace was that we did not have to stick to the exact same structure as the proposal, so I was able to make the necessary changes required. I initialy started with a basic program that utilizes random data to simulate the sensor inputs e.g (Object Detection: Pedestrian or Car get returned). After doing some OpenCV tutorials I decided to try my hand and impelment some of its features into my project, I settled with implementing color detection which was perfect for my Traffic Signal Detection scenario, by using 3 images with the colors red, green and yellow, I can extract them and depending of the result the rest of the program responds accordingly. 

