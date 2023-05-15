---
layout: page
title: Unit 5
parent: "Module: Object Oriented Programming"
nav_order: 8
---

<h2>More on Classes</h2>

## Python Program
- **Instructions**: Write a Python program with polymorphism that is usable within the summative assessment for the driverless car.

```py
# Driverless Car - Polymorphism
class Car:
  def __init__(self, make, model, range_km, year):
    self.make = make
    self.model = model
    self.range_km = range_km
    self.year = year

  def switch_car_on(self):
    print(f"The {self.make} AI is now switching the car on")
        
  def stop_car(self):
    print(f"The {self.make} AI is now stopping the car")
        
  def accelerate_car(self):
    print(f"The {self.make} AI is now accelerating the car you have {self.range_km}km left")
        
  def brake_car(self):
    print(f"The {self.make} AI is now braking the car")

class ElectricCar(Car):
  def __init__(self, make, model, range_km, year):
    super().__init__(make, model, range_km, year)

  def switch_car_on(self):
    print(f"The {self.make} AI is now switching the car on")
  
  def stop_car(self):
    print(f"The {self.make} AI is now stopping the car")
  
  def accelerate_car(self):
    print(f"The {self.make} AI is now accelerating the car you have {self.range_km}km left")
  
  def brake_car(self):
    print(f"The {self.make} AI is now braking the car")

class PetrolCar(Car):
  def __init__(self, make, model, range_km, year):
    super().__init__(make, model, range_km, year)

  def switch_car_on(self):
    print(f"The {self.make} AI is now switching the car on")
  
  def stop_car(self):
    print(f"The {self.make} AI is now stopping the car")
  
  def accelerate_car(self):
    print(f"The {self.make} AI is now accelerating the car you have {self.range_km}km left")
  
  def brake_car(self):
    print(f"The {self.make} AI is now braking the car")

# create instances of the ElectricCar class
tesla = ElectricCar("Tesla", "Model S", 500, 2020)
ford = PetrolCar("Ford", "Ranger", 100000, 2021)
# print the car details
print(f"I am a {tesla.make} {tesla.model}, my range is {tesla.range_km}km and I was made in {tesla.year}")
print(f"I am a {ford.make} {ford.model}, my range is {ford.range_km}km and I was made in {ford.year}")

for car in (tesla, ford):
  car.switch_car_on()
  car.accelerate_car()
  car.brake_car()
  car.stop_car()
```