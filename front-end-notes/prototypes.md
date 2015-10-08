#Prototypal Inheritance

Prototypal inheritance is a feature that allows JavaScript objects to 'inherit' properties from the object used to create them. This is a great way to streamline object production and avoid repetitive code. 

###This example comes from Steve's JS102 Codepen Example

####Tasks
1. Author functions that define the Make and Model of a Car and the Car itself.
2. Create three instances of your Car that each have a different color.
3. Each Car you create should inherit the make and model name.

####Example

Create a function, Make, that has a property of makeName and give it the value of your vehicle's make.

``function Make() {
  this.makeName = "Toyota";
}``

Create a function, Model, to hold the corresponding property and value

``function Model() {
  this.model = "Camry";
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

##Links:

####MDN - [Inheritance and the Prototype Chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)
####Douglas Crockford - [Prototypal Inheritence](http://javascript.crockford.com/prototypal.html)
####Tutorial - [Prototypal Inheritance](http://javascript.info/tutorial/inheritance)

#Video Tutorials
####[JavaScript Prototypal Inheritance](https://www.youtube.com/watch?v=qMO-LTOrJaE)
####[JavaScript Tutorial - Inheritance and Prototype Chain](https://www.youtube.com/watch?v=RFWvIEVZ_j8)
####[Javascript -- Prototypes, Prototypal Inheritance Done Right.](https://www.youtube.com/watch?v=Yvf_kUBZmXg)
