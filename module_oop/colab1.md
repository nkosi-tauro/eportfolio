---
layout: page
title: "Collaborative Discussion 1"
parent: "Module: Object Oriented Programming"
nav_order: 16
---

## Table of contents
- [Discussion Topic: Factors which Influence Reusability](#discussion-topic-factors-which-influence-reusability)
- [Summary](#summary)

## Discussion Topic: Factors which Influence Reusability
- Refer to the article by Padhy et al. (2018), specifically Table 1, where the authors present a list of factors which they consider influence the reusability of a piece of object-oriented software.

- In this collaborative discussion, you are required to prioritise this list, presenting your argument for the priorities assigned.

--- 
{: data-content="Discussion"}
**Initial Post**  
The following is how I would rank the list of elements that impact the reusability of a piece of object-oriented software described by Padhy et al. (2018) in order of importance, starting with the most critical component.

First, Used in the Data Project should be at the top of the list. In object-oriented software development, it is essential to reuse data. Reusing data can save time and money because it eliminates the need to make new data for every project. Reusing data can also improve the project's quality and ensure the results are correct.

Second, Documentation in a Project should be the second most important thing on the list. Documentation is an integral part of software development because it helps ensure that the software is being built to meet the project's needs. Also, having Documentation that can be used again can save time and money because it means that new Documentation doesn't have to be made for every project.

Third, Architecture Driven Approach should be the third most important thing on the list. In object-oriented software development, it is essential to take an architecture-driven approach. This helps make sure that the software is designed in a way that meets the needs of the project. Using an architecture-driven approach can also help improve the software's quality and reliability and make it easier to use in the future.

The fourth most important thing on the list should be Modules in the Program . In object-oriented software development, modules are essential because they help ensure the code is organized in a way that makes it easy to reuse (Padhy et al., 2018, pp. 431-441). Modules can also make the software more efficient by breaking up the code into pieces that can be used in different projects.

Conclusion

• Used in the Data Project (UD) should be at the top of the list. 

• Documentation in the Project (DIP) should be the second most important. 

• Architecture Driven Approach (ADP) should be the third most important. 

• Modules in the Program (MIP) should be the fourth most important. 

• Followed by Test Cases/Test Design, Algorithm Used in the Program, Design Patterns, Knowledge Requirement, Models in the Project, Requirement Analysis and Service Contracts.

References:

Padhy, N., Satapathy, S. and Singh, R.P., 2018. State-of-the-art object-oriented metrics and its reusability: a decade review. In Smart Computing and Informatics: Proceedings of the First International Conference on SCI 2016, Volume 1 (pp. 431-441). Springer Singapore.

---
>**Peer Response 1**  
>
>Great post thank you,  
&nbsp;  
>It looks to me like you've prioritised the factors by how often they are reused within a single project. I really like this perspective, because it provides a guidance for good practice in very-large, open-source projects. If software projects get large enough, and enough people work on them, it's extremely important to make everything reusable, because nobody could ever know the entire codebase of the project anymore.  
&nbsp;   
>So, I 100% agree that data is likely to be reused within a project, especially if it's made to be public to all areas of the code. Likewise, documentation is key for large projects, as developers may need to maintain someone else's section of the code.  
&nbsp;   
>I'm wondering what your thoughts are on the following question: which of Padhy et al's factors are easiest/most difficult to document during a large project? I guess we can exclude documentation about documentation though...
  >>**My Response 1**   
  &nbsp;  
  >>Thank you for your response.  
  &nbsp;  
  >>That is a good question. I do not have much experience in a large project, what is the definition of a large project? (Is it a large team, or the complexity/time it takes to create said project? etc). However, If I were to rank the factors from easiest to most difficult, this would be the order:
  Easiest: architecture, requirements, modules
  Most Difficult: Test Cases, algorithms 
  I would rate the rest of the factors somewhere in the middle. 
  &nbsp;  
  >>I would like to know your thoughts on my ranking and possibly how you would rank these factors.  

>**Peer Response 2** (Continued from My Response 1)  
&nbsp;  
>Thanks for the reply,  
&nbsp;  
>It's going to be arbitrary, but for discursive purposes, we can consider a large project to be one with 10,000+ lines of code. I could be wrong, but I believe that's enough lines of code to make an assumption that one person will not memorise the entire codebase. According to one of the ex-managers at Google, Rachel Potvin (2015), Google's entire codebase is more than 2 billion lines of code, so projects can get pretty big. I think for those larger projects, documentation may be the only way to quickly get the information you need from other sections of the code.  
&nbsp;  
>I've never worked on a large project, so I can only draw from experience on smaller projects too, but I suspect that requirements are quite easy to document too, thanks to use-case diagrams at the very least. I definitely agree architecture is easy to document, if there is a well-structured architecture such as a Model-View-Controller architecture that's not too granular on the details. The contents of modules shouldn't be too difficult to document either, as long as software developers proactively add comments to the header of functions/objects of the module to explain their intent, parameters and results. Then the modules documentation can just be automated as the collection of these comments.  
&nbsp;  
>For algorithms and test cases, its possible to encapsulate collections of them in modules, but deciding which modules should be created for a project in the first place, I don't think is trivial. Especially if you want to maximise reusability of the modules, and those algorithms/test cases across projects. I also don't think it's easy to label algorithms and test cases in a way that makes them obvious to find within documentation. Maybe there's some tricks for that too.  
&nbsp;  
>Do you think it's worth documenting the lesson's learnt from a project? I think it has personal value, but I'm not convinced it's valuable to anyone else. It's a good way of forming hypotheses for yourself though I guess?  
&nbsp;  
>References  
&nbsp;  
>Potvin, R. (2015) Why Google Stores Billions of Lines of Code in a Single Repository. Available from:
https://www.youtube.com/watch?v=W71BTkUbdqE&ab_channel=%40Scale [Accessed 1 February 2023].
  >>**My Response 2**   
  &nbsp;  
  >>This is quite interesting, with regards to documenting lesson's learnt from a project, my thoughts are that it has both personal value and value to the team/organization. I believe in programming we tend to encounter similar issues over and over and so being able to see an individuals thought process as to how they navigated their way through those issues but not only that it could be about how they found more easier/efficient and or robust ways of doing something.  
  &nbsp;  
  >>I think this could be greatly beneficial especially to Juniors and Interns (and everyone else) who will be working on the same project later on down the line. However I would say, the documentation would have to be easily accessible and intelligible by relevant teams. 

---
>**Tutor Question** (Based on Initial Post)  
&nbsp;  
>How do you think the architecture-driven approach applies across Agile and something like Waterfall? Is it applicable to one more than the other or is it equally important?  
  >>**My Response**   
  &nbsp;  
  >>The architecture-driven approach applies more to Waterfall than Agile. In Waterfall, the architecture-driven approach is typically used to plan and define the system architecture at the beginning of the project. This serves as the blueprint for the project as it is defined in detail upfront and used to guide the development process, whereas in Agile the architecture is still defined at the beginning of the project but since the methodology is about Iteration and continual improvement, this definition is more so used as a guide to ensure that the system is built in a cohesive and consistent manner, but it is flexible enough to adapt to changing requirements and evolving design decisions.   


---
{: data-content="End Discussion"}

## Summary 

Initially, I ranked the factors of reusability proposed by Padhy et al. (2018) based on a single project. However, through discussion and feedback from my peers, I realized that there is no definitive or correct order to rank the factors of reusability. As software developers, we approach software development from different angles, and therefore, have different priorities and preferences.

For example, developers who use the Waterfall methodology might prioritize an architecture-driven approach as it forms the foundation of their thinking, while Agile developers would likely rank another factor as most important.

The discussion also highlighted the importance of considering the context in which the software is being developed. For instance, the priority of reusability may differ depending on whether the software is being developed for internal use within an organization or for commercial use.

Overall, the discussion highlights the importance of understanding the factors of reusability and their interdependence while considering the context in which the software is being developed. The paper by Padhy et al. (2018) provides an excellent starting point, but it is up to individual developers to adapt and tailor the factors to fit their specific project needs.

References

Padhy, N., Satapathy, S., & Singh, R.P. (2018) 'State-of-the-Art Object-Oriented Metrics and Its Reusability: A Decade Review', in: Satapathy S., Bhateja V., Das S. (eds) *Smart Computing and Informatics. Smart Innovation, Systems and Technologies*. 77. Springer.

---
