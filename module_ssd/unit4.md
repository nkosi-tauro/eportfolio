---
layout: default
title: "Unit 4"
parent: "Module: Secure Software Development"
nav_order: 6
---

## Exploring Programming Language Concepts

### Recursion
One of the classic programming problems that is often solved by recursion is the towers of Hanoi problem. A good explanation and walkthrough are provided by Cormen & Balkcom (n.d.) - the link is in the reading list. (the code they used for their visual example is provided on their website as well).

- Read the explanation, study the code and then create your own version using Python (if you want to make it more interesting you can use asterisks to represent the disks). Create a version that asks for the number of disks and then executes the moves, and then finally displays the number of moves executed.
- What is the (theoretical) maximum number of disks that your program can move without generating an error?
- What limits the number of iterations? What is the implication for application and system security?

### Solution



## Regex

The second language concept we will look at is regular expressions (regex). We have already presented some studies on their use, and potential problems, above. The lecturecast also contains a useful link to a tutorial on creating regex. Re-read the provided links and tutorial (Jaiswal, 2020) and then attempt the problem presented below:

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




