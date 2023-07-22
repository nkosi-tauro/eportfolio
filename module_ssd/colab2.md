---
layout: default
title: "Collaborative Discussion 2"
parent: "Module: Secure Software Development"
nav_order: 16
---


### Discussion Topic
TrueCrypt was a popular and well-respected operating system add-on that could create encrypted volumes on a Windows and/or Linux system. In addition, it was also designed to create a complete, bootable volume that could encrypt the entire operating system and data for a Windows XP system. It was discontinued in 2014.

Case Study: Read the TrueCrypt cryptanalysis by Junestam & Guigo (2014) (link is in the reading list) and then answer the following questions:

- The (anonymous) TrueCrypt authors have said “Using TrueCrypt is not secure as it may contain unfixed security issues” (http://truecrypt.sourceforge.net/, 2014). Does the cryptanalysis provided above prove or disprove this assumption?
- Would you be prepared to recommend TrueCrypt to a friend as a secure storage environment? What caveats (if any) would you add?

Present an ontology design which captures the weaknesses of TrueCrypt, and organise them according to their severity. Expand the ontology design by considering the factors which will cause each weakness to become an issue from a user's perspective. For example, if a user wishes to encrypt a disk storing bank details using TrueCrypt, which weakness of the software might cause this specific user goal to be negatively impacted? 

**Initial Post**  
TrueCrypt, a once-popular and respected operating system add-on for Windows and Linux, offered encryption capabilities for storage and complete system protection. The authors Junestam & Guigo (2014) conducted a cryptanalysis on Truecrypt and they do not disprove the statement that "Using TrueCrypt is not secure as it may contain unfixed security issues" but rather highlight several weaknesses and vulnerabilities in the software.


Based on the provided information, I would not recommend TrueCrypt as a secure storage environment to a friend. The caveats I would add include:

| Weakness                                        | Severity |
|-------------------------------------------------|----------|
| Lack of ongoing support                         | Medium   |
| Unfixed security issues                         | High     |
| Unclear authorship                              | Medium   |
| Potential backdoors                            | High     |
| Incompatibility with newer operating systems   | Medium   |
| Increased vulnerability to new security risks and vulnerabilities | High     |


**References:**  
Junestam, A. & Guigo, N. (2014) Open Crypto Audit Project Truecrypt Security Assessment. Available from: https://opencryptoaudit.org/reports/iSec_Final_Open_Crypto_Audit_Project_TrueCrypt_Security_Assessment.pdf [Accessed 24 June 2023]. 

>**Tutor Response**  
>Hi Nkosi,  
&nbsp;  
>Please find my feedback at: https://kaplanopenlearning.zoom.us/rec/play/LKaUvD449cSZtoiLu4clzJEHcOuDnuUQ5L_KQYpA-MgFtnsGxfyWO5zGjamtLZKpmwBZyVNRfX-cjcOM.5QBuuvWKtuKiXPRl?autoplay=true&canPlayFromShare=true&componentName=rec-play&continueMode=true&from=share_recording_detail&originRequestUrl=https%3A%2F%2Fkaplanopenlearning.zoom.us%2Frec%2Fshare%2F2ECmb7-dPeqlLFXVjRsxECaafiDwbJQhgCUJiALj96mO73i-ikCHCuYDD9xzedlP.DFBuXnZDwzyFAnU3&startTime=1687780677000
> &nbsp;  
&nbsp;   
>Best wishes,
Cathryn

>**Peer Response (Michael)** 
>
>Hi Nkosilathi,
>
>Thank you for sharing your thoughts. I definitely agree with you, as I would not recommend TrueCrypt either. The most significant factor for this decision is that TrueCrypt is no longer being maintained by its authors. Using any software that is no longer being supported is, undoubtedly, dangerous. The UK National Cyber Security Centre suggests using something other than obsolete software or hardware, recommending that those should be abandoned before the end of their support dates (National Cyber Security Centre, N.D.). Most of the weaknesses you mentioned above can be explained by the software's abandonment, as potential backdoors, unfixed security issues, and incompatibility with newer operating systems could be fixed by updating TrueCrypt's code.
>
>I also agree that unclear/anonymous authorship can be a security risk. Whenever we use software on a day-to-day basis, we do apply a degree of trust in the software authors, and none of us will likely be suspicious when installing software created by generally trusted organisations such as Microsoft. If the authors are unknown, applying the same level of trust would be foolish. However, since the TrueCrypt code is open-source, the code can be read, studied, and verified, somewhat alleviating this weakness. Similarly to various Linux distributions, a community of programmers could work on TrueCrypt, update it, and patch its security flaws. 
>
>References
>
>National Cyber Security Centre (N.D.) Device Security Guidance - Obsolete Products. Available from: https://www.ncsc.gov.uk/collection/device-security-guidance/managing-deployed-devices/obsolete-products [Accessed 28 June 2023].
>

>**Peer Response (Rachel)** 
>
>Hi Nkosilathi and Michael,
>
>I’d like to jump in on your discussion as I think you touch on an area that is much debated and controversial – backdoors in encryption software.
>
>First of all, I believe that TrueCrypt and subsequently VeraCrypt strongly maintain that there are no backdoors to their software, not even potential ones which could be caused by them named vulnerabilities, and that this is one of their key principles. I only mention this as it is a hotly debated topic in cybersecurity regulation and the protection of personal data vs. law enforcement. Though Junestam & Guigo (2014) found some vulnerabilities that may lead to the leakage of sensitive information, I do not believe they found any evidence of backdoors – in fact they mention this at the beginning.
>
>I also do not mention this to point out that you are wrong (I had to double check myself), but actually because I find the topic of backdoors quite baffling. Several countries (e.g. the ‘five-eyes’ surveillance alliance) are pushing to force tech and telecommunications companies to implement backdoors into their encryption software for law enforcement purposes, especially in the context of terrorism or whistleblowing (Williams, 2020). The EU Commission is not in agreement on whether companies should be required to implement backdoors, but have turned their attention to curating talent and technology which could recover encrypted data (e.g. through ethical hacking or brute force attacks) (Koomen, 2019). While the potential to increase the attack surface of stored data through weakening encryption standards can only be counterproductive to protecting personal and sensitive data, there are some caveat situations where this may actually be quite catastrophic – for example the unexpected death of a person who has encrypted personal data related to their assets or intellectual property (Williams, 2020).
>
>I do also want to return to my user-friendliness argument also in this discussion of TrueCrypt/ VeraCrypt in particular. By making encryption software unhackable via offering no backdoors on principle, it absolutely must also be intuitive and well-documented. It is true that users who are encrypting data should take responsibility for their own technical understanding, but human error is something that happens even at very high levels.
>
>I hope I have not gone a little off topic in this post, but I do believe that this is an important topic which is strongly related to TrueCrypt’s sudden decision not to continue development. I am not in favour of enforced backdoors. However, perhaps as Michael says, it is a good idea to patch the security flaws to alleviate concerns of users who trusted the software and whose data may be fatally compromised by it.
>
>References
>
>Junestam, A. & Guigo, N. (2014) Open Crypto Audit Project Truecrypt Security Assessment.
>
>Koomen, M. (2019) The Encryption Debate in the European Union. Washington DC: Carnegie Endowment for International Peace.
>
>Williams, T (2020) Encryption Vs. Law Enforcement (And How It Affects Your Privacy Rights). Available from: https://www.techopedia.com/how-encryption-affects-your-privacy-rights-and-law-enforcement/2/34197 [accessed 30.06.2023].
>



