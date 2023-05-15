---
layout: page
title: Unit 6
parent: "Module: Object Oriented Programming"
nav_order: 9
---

<h2>Abstract Methods and Interfaces</h2>

## Seminar Preparation: Abstraction in Object Oriented Programming

## Python Program
- Develop a Python program which has three abstract methods and one subclass which allows a user to perform banking operations.

```py
from abc import ABC, abstractmethod

class BankAccount(ABC):
  def __init__(self, balance, credit_score):
    self.balance = balance
    self.credit_score = credit_score

  @abstractmethod
  def get_balance(self):
    pass

  @abstractmethod
  def get_credit_score(self):
    pass

  @abstractmethod
  def get_loan(self):
    pass

class Applicant(BankAccount):
  def get_balance(self):
    print(f"Your balance is ${self.balance}.")

  def get_credit_score(self):
    print(f"Your credit score is {self.credit_score}.")

  def get_loan(self):
    if self.credit_score >= 700:
      print(f"You qualify for a loan of ${self.balance * 0.2}!")
    elif self.credit_score >= 600:
      print(f"You qualify for a loan of ${self.balance * 0.1}!")
    else:
      print("You do not qualify for a loan.")


John = Applicant(1000, 600)
John.get_balance()
John.get_credit_score()
John.get_loan()
```

