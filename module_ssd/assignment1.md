---
layout: default
title: "Assignment 1: Design Document"
parent: "Module: Secure Software Development"
nav_order: 1
---

## Table of Contents
- [Full Brief](#full-brief) 
- [Reflection](#reflection)


## [Full Brief](#full-brief) 
For this assessment, you are advised to position yourself and your team as IT Software Consultants and Developers.

You are required to develop an application that provides a secure repository for an organisation with domain-specific requirements. A domain refers to a group of users with similar application and hardware requirements. A domain may be characterised by having:   

periodic pressure on resources (CPU, storage, or the network)
interactive response requirements between request and reply
substantial data download requirements
Such requirements place specific demands on a system’s operations, and this influences the way that it should be operated and managed.

Domains which you should consider for the purpose of this assignment include:

- the International Space Station (NASA, 2007)
- **the Dutch Police Internet Forensics (Government of the Netherlands, n.d.)** - Chosen Domain
- the Hadron Collider at CERN (The Computer Security Team, 2020)

You can read more about the computer requirements of these systems using the references given. You should choose a single domain to focus your development on, and your system should be tailored to the requirements of this domain. In all domains, a user will need to be able to upload and download data.

**Application requirements**: 

The agreed criteria for successful development are:

- The application should support access via a web browser and/or a command line application that will allow an authenticated user to perform the suite of CRUD capabilities.
- The solution should ensure that all privacy and security regulations are met, including those specified by the General Data Protection Regulation (GDPR) (ICO, n.d.)
- Mechanisms should be deployed to minimise the attack surface of the solution. At a minimum, the application should include authentication, authorisation, data encryption, and event monitoring. 
- The organisation would like to see a distributed/microservice version of the application because they have concerns about scalability, and they may wish to extend use to partner organisations on a worldwide basis
- At least two events occurring within and/or around the application should run while the application is live, using a concurrent threading approach. These should be specific and relevant to your chosen domain.  

Your full brief is to:

1. Create a comprehensive design proposal report, describing how you will meet the requirements, and the design and implementation of the solution.
2. You should create a working prototype of your microservice design via a command line (CL) application.

You can view the design proposal here: [Design Proposal](https://github.com/alesteka/SSD/blob/main/designProposal/Dutch%20Police%20Forensics%20Domain.pdf)   
You can view the Prototype here: [Prototype](https://github.com/alesteka/SSD/tree/main/appPrototype)



## [Reflection](#reflection)
Overall, this team project provided me with valuable insights into the significance of effective communication within a team. From the beginning, it was clear that extensive research would be necessary to successfully complete the assignment. However, I noticed that the team often fell into a passive approach, simply accepting suggestions without critically evaluating or providing constructive feedback. This lack of proactive engagement became frustrating for me, as I desired a more intellectually stimulating collaboration where ideas could be openly critiqued and evaluated. In future projects, I will strive to foster an environment of open dialogue, constructive criticism, and active engagement to encourage innovative solutions and personal growth within the team.

In conclusion, while this team project was a valuable learning experience, it also highlighted the need for a more proactive and critical approach to communication. I recognize the importance of creating a space where ideas can be openly challenged, alternative viewpoints are welcomed, and thoughtful debates are encouraged. By prioritizing these aspects, we can enhance the quality of our work, promote personal and professional growth, and achieve greater success as a team.