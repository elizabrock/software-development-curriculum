#This example comes from Steve's JS102 curriculum example.

##Prototypal Inheritance

####Tasks
1. Author functions that define the Make and Model of a Car and the Car itself.
2. Create three instances of your Car that each have a different color.
3. Each Car you create should inherit the make and model name.

####Criteria
1. Create a function, Make, that has a property of makeName and give it the value of your vehicle's make.
2. Create a function, Model, to hold the corresponding property and value
3. What is the prototype of a Model?
4. Define a Car
5. What is the prototype of a Car?
6. Create the first car
7. Create the second car
8. Create the third car

####Completed Task

Create a function, Make, that has a property of makeName and give it the value of your vehicle's make.

``function Make() {
  this.makeName = "Accura";
}``

Create a function, Model, to hold the corresponding property and value

``function Model() {
  this.model = "2.5 TL";
}``

What is the prototype of a Model?

``Model.prototype = new Make();``

Define a Car

``function Car(color) {
  this.color = color;
};``

What is the prototype of a Car?

``Car.prototype = new Model();``

Create the first car

``var firstCar = new Car("red");``

Create the second car

``var secondCar = new Car("blue");``

Create the third car

``var thirdCar = new Car("gold");``
