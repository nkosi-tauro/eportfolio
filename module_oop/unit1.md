---
layout: page
title: "Unit 1"
parent: "Module: Object Oriented Programming"
nav_order: 4
---

<h2>An Introduction to Python Programming and the OO Programming Paradigm</h2>

## Table of contents
- [Article Review](#article-review)
- [Python Program (Protected & Unprotected Variables)](#develop-a-python-program-and-apply-protected-and-unprotected-variables-within-it)


## [Article Review](#article-review)
- Review the article by Di Silvestro & Nadir (2021). Discuss one aspect of this article which you find unexpected.

---
{: data-content="Discussion"}

In their article, Di Silvestro and Nadir (2021) investigate the effects of ePortfolio development on reflective and deeper learning in an online graduate adult education program. One aspect of the article that I found unexpected was the finding that ePortfolios can help foster a sense of community among online learners. The authors suggest that through the use of ePortfolios, students were able to share their learning experiences with their peers, receive feedback and support, and build relationships with other learners. This finding is important because it highlights the potential of ePortfolios to enhance students' learning experiences in online education programs.

Moreover, the authors point out that ePortfolios can be used to assess students' learning outcomes and achievements. They note that ePortfolios provide a comprehensive and holistic picture of students' learning, which can be used to evaluate the effectiveness of the online education program.

Overall, this article highlights the potential of ePortfolio development to enhance students' learning experiences in online graduate adult education programs, and underscores the importance of reflective and deeper learning in achieving meaningful learning outcomes.

<b>References</b>:
Di Silvestro, F., & Nadir, M. (2021). The Power of ePortfolio Development to Foster Reflective and Deeper Learning in an Online Graduate Adult Education Program. Adult Learning, 32(4), 154-164.

---

## [Develop a Python program and apply protected and unprotected variables within it.](#develop-a-python-program-and-apply-protected-and-unprotected-variables-within-it)

```py	
# Protected and unprotected variables
class gmailAccount():
  """An example class to represent the data fields you would need to login to an email account.
  The email and password variables are protected and unprotected variables, respectively 
  """
  def __init__(self, email, password):
    self.email = email # unprotected variable
    self._password = password # protected variable

# Create an instance of the gmailAccount class 
myAccount = gmailAccount("Nkosi", "1234")
# Print the email and password variables
print(myAccount.email)
print(myAccount._password)
```
