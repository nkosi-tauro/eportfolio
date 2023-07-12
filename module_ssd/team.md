---
layout: default
title: "Team Minutes"
parent: "Module: Secure Software Development"
nav_order: 17
---

## Team Minutes // Secure Software Development 2023
Minutes Captured by: Nkosilathi Tauro, Date Format (DD/MM)
### Members: 
- <a href="https://github.com/alesteka" target="_blank">Ales Tekavcic</a>
- <a href="https://github.com/muwalofra" target="_blank">Francis Muwalo</a>
- <a href="https://github.com/nkosi-tauro" target="_blank">Nkosilathi Tauro</a>
- <a href="https://github.com/alihu12345" target="_blank">Abdulahi Alihu Ngamjeh</a>


## Team Meeting 1 (06/05)

The Team met for the first time, and we drafted and completed the Team Contract
- We decided to brainstorm which domain to pick and discuss that in our next team meeting
- We have a rotational Team Leader (This week it was Ales)
- We also lost one of our Team members due to a team reshuffle.  

## Team Meeting 2 (13/05)
- The Team decided to go with the Dutch Police Forensics Domain
- The team decided to make use of Python as the Language for this project.
- Things that the Team needs To think about:
    - Look at Django and Flask 
    - We will need Testing Libraries, Authentication, Databases, Logs etc
    - Microservices? (Containers: Docker etc)
    - Hosting(AWS, Google Cloud etc) 

**Todo**:
The team will each design a version of the below System Architecture. We will then meet up next week to choose the best version and proceed with that. 

(Proposed, feel free to change this)
We propose a microservices' architecture, with the following services:

User Service: Handles authentication, authorization, user profiles, and roles.  
Data Service: Responsible for storing, retrieving, updating, and deleting data.  
Encryption Service: Encrypts and decrypts data.  
Event Monitoring Service: Monitors and logs system events.  
Analysis Service: Performs complex data analysis tasks.   
API Gateway: Routes requests to appropriate services.  


## Team Meeting 3 (20/05)
- The Team met up to discuss the Designs we had worked on in the past week.
- We set up some timelines to get the Design document done and ready for the Tutor review
- We set up a knowledge dump document for the team to share what they are working on


## Team Meeting 4 (27/05)	
- The Team started drafting the Design Proposal
- We are getting ready to Submit it for Tutor Feedback this week
- We also started with the Command Line Prototype

## Team Meeting 5 (03/06)	
- The team met up to discuss the feedback we got from the tutor in the review session.
- Overall, we were on the right track with our initial first draft, we just had to put more focus on following the diagram rules (e.g. No state in a use case diagram) and making our document less wordy but still keeping its brevity.
- The team divided up the Final tasks based on the feedback received.
    - Francis will work on the Background and revise the Use Case diagram
    - Abdul will work on the Activity diagram
    - I will work on revising the Proposed system, design decisions and an Architecture diagram
    - Ales will continue to work on the Prototype.


## Team Meeting 6 & 7 (08/06) (10/06)
- We met up to discuss the final tasks we had assigned each other.
- We reviewed and compiled the final document.
- Ales completed the prototype and pushed the files to GitHub
- We Submitted the Final Design Proposal and Prototype on Saturday (10/06)

## Team Meeting 8 (20/06)
- We met up to discuss the best approach to developing the Project.
- We broke down the application into different components and assigned them to each other.
- Ales: Working on Cyberdetective view and the Login Service
- Abdul: Working on the Public View
- Francis: Working on the Reporting Form
- Nkosi: Working on the Admin View, Deployments, and User Services
- I set up the initial Repository on GitHub for the team to start working from.
- We also drafted up some Wireframes to assist the team in creating their views.

## Team Meeting (Ales <> Nkosi 1-on-1) (21/06)
- Met up with Ales to have a Learning session on what he was working on


## Team Meeting 9 (24/06)
- We had a Show and Tell Session where each team member presented what they worked on, progress check
- We had discussions about possible improvements, but we decided to defer them to the end and focus on the core requirements for now
- Abdul was not available as he had an emergency to deal with - We hope everything went well. 


## Team Meeting 10 & 11 (27/06) & (01/07)
- Significant Progress was made by Ales and I (Nkosi) on the Features we were working on.
- The Core requirements are pretty much complete, I stepped in to Complete the Public View and the initial reporting form.
- Nkosi Offered to assist team members in getting their development environments setup so that they could contribute on their assigned features.
- Nkosi implemented the Initial tests for the application


## Team Meeting (Francis <> Nkosi 1-on-1) (04/07)
- Met up with Francis to discuss his assigned feature (Reporting Form)
- I assisted him with setting up his dev environment and getting Django and source control (Git) up and running.
- We Integrated what he had been working on (Reporting Form model) and merged it into the dev branch



## Team Meeting 12 (05/07)
- We had a discussion on what are the remaining requirements we needed to implement.
- Unit Testing, Multithreaded/Concurrent requirement and adding functionality to the Logs were the remaining features.
- We divided the remaining tasks.
- Ales will be creating unit tests for the user_service
- Francis & Abdul will be creating unit tests for the reporting_service
- Nkosi will work on the Multithreaded/Concurrent requirement and add functionality to the Logs

## Team Meeting 13 (10/07)
- Nkosi Implemented an Email threading system and caching to meet the Multithreaded/Concurrent requirement.
- I also then implemented Rate Limiting as additional functionality for the Logs.
- I ran the project through Pylint and created the Pylint reports.
- I created additional tests for the reporting_service
- Ales created tests the user_service.
- The team is also preparing for the upcoming Presentation on 13/07, these were the additional meeting points:
    - The project, did we meet all the requirements?
    - Have a look at the submission checklist. 
    - The 2 PowerPoint Slides That we can create for the presentation. 
    - The Upcoming Presentation (How will we present it? Will we divide the Presentation into 4 equal parts, so everyone can have a chance to contribute?)
    - Functional Testing: We can each live test every component of the application in the meeting, to make sure it all works.


	
