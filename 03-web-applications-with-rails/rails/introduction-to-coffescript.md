# CoffeeScript Overview

## Introduction to CoffeScript
CoffeeScript is a programming language that compiles down to JavaScript. It can be considered as an attempt to expose the good parts of JavaScript in a simple way,
and is essentially just a syntactic rewrite of JavaScript. The core language itself stays the same, with small semantic enhancements. The syntax is modified, modeled after
Python and Ruby and implements many features from those two languages. The CoffeeScript compiler outputs clean JavaScript that follows best practices and is eminently readable; it also allows you to use any existing JavaScript library seamlessly from CoffeeScript (and vice-versa).
The compiled output is readable and pretty-printed, will work in every JavaScript runtime, and tends to run as fast or faster than the equivalent handwritten JavaScript.

### The main benefits of using Coffeescript instead of Javascript are:
* You can use less code to solve the same problem
* The code may be more readable
* The code may be easier to maintain


## Syntax

### Assignments
In coffeescript, variable declarations and semicolons are not required.

**CoffeeScript**
```javascript
str = "hello"
number = 1 
opposite = true
```
**Javascript**
```javascript
var str = "hello";
var number = 1; 
var opposite = true;
```

### Conditions
**CoffeeScript**
```javascript
x == 2
x is 2
x isnt 3
x != 3
```
**Javascript**
```javascript
x === 2;
x === 2;
x !== 3;
x !== 3;
```

**CoffeeScript**
```javascript
not
and
or
yes
on
no
off
```
**Javascript**
```javascript
!
&&
||
true
true
false
false
```

**CoffeeScript**
```javascript
number = -42 if opposite

if 1 < x < 10
  print(x)

switch cupsOfCoffee
 when 0 then 'Asleep'
 when 1 then 'Eyes Open'
 when 2 then 'Buzzed'
 else 'Dangerous'
```
**Javascript**
```javascript
var number;
if (opposite) { 
  number = -42; 
} 

if (1 < x && x < 10) {
 print(x);
}

switch (cupsOfCoffee) {
 case 0:
 return 'Asleep';
 case 1:
 return 'Eyes Open';
 case 2:
 return 'Buzzed';
 default:
 return 'Dangerous';
```

### Functions
* Functions are denoted with **->**
* Parameters are defined before the function **(x) ->**
* Parameters can also be set with default values **(x=2) ->**

**CoffeeScript**
```javascript
square = (x) -> x * x
```
**Javascript**
```javascript
function square(x) { 
  return x * x; 
}; 
```

### Arrays
**CoffeeScript**
```javascript
stuff = [1, 2, 3, 4, 5]
tenThings = range[1..10]
nineThings = range[1...10]
```
**Javascript**
```javascript
var stuff = [1, 2, 3, 4, 5];
var tenThings = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var nineThings = [1, 2, 3, 4, 5, 6, 7, 8, 9];
```

### Objects
**CoffeeScript**
```javascript
person = name: 'bob', age: 18, job: 'programmer'
```
**Javascript**
```javascript
var person = { name: 'bob', age: 18, job: 'programmer' };
```

### Iteration
Arrays can be iterated using **in** and objects can be iterated using **of**.

**CoffeeScript**
```javascript
alphabet = ["a", "b", "c"]
print "Letter: #{letter}" for letter in alphabet
```
**Javascript**
```javascript
alphabet = ["a", "b", "c"];
alphabet.forEach(function(letter){
  print "Letter: " + letter;
});
```

**CoffeeScript**
```javascript
people = 
  bill:
    name: 'bill'
    age: 18
  bob:
    name: 'bob'
    age: 21
    
print "#{person} is #{attrs.age} years old" for person, attrs of people
```

## Special Rules

###Indentation
Because brackets are not required for functions or objects, scope is defined by indention. If an object is split onto multiple lines commas are not necessary.

**CoffeeScript**
```javascript
add = ->
  obj =
    name: "foo"
    age: "bar"
    
  console.log(obj)
```
**Javascript**
```javascript
var add = function() {

  var obj = {
    name: "foo",
    age: "bar"
  };
  
  console.log(obj);
}
```

### Implicit Returns
CoffeeScript uses implicit return, meaning that something will always be returned even if the return keyword isn't used

**CoffeeScript**
```javascript
add = (x, y) ->
  x + y
```
**Javascript**
```javascript
var add = function (x, y){
  return x + y;
}
```

### String Interpolation
CoffeeScript supports string interpolation

**CoffeeScript**
```javascript
someString = "some words #{variable}"
```
**Javascript**
```javascript
var someString = "some words " + variable;
```

### This vs @, Arrows vs Hash Rockets
In CoffeeScript the keyword **this** is replaced with the **@** character. 

**CoffeeScript**
```javascript
@.name
```
**Javascript**
```javascript
this.name
```

In addition, you can specify between the default value of this (->) and the current value of this (=>) by using either the Arrow or Hash Rocket (also called a Fat Arrow) syntax, respectively. In other words, when a fat arrow is used to bind a function, a _this reference is saved in the same context as the function that was declared.


## Installation

Since Rails 3.1 Coffee-Rails is included in the default Gemfile when you create a new application. If you are upgrading to Rails 3.1 you must add the coffee-rails to your Gemfile:

    gem 'coffee-rails'

## Further Reading

* [RailsCasts CoffeeScript Tutorial](http://railscasts.com/episodes/267-coffeescript-basics)
* [Tutsplus CoffeeScript Tutorial](http://code.tutsplus.com/tutorials/rocking-out-with-coffeescript--net-17027)
* [Behavior of Fat Arrow](http://jaketrent.com/post/behavior-of-coffeescript-fat-arrow/)

## Sources

* [Official Coffeesript website](http://coffeescript.org/)
* [CoffeeScript-Wikipedia](http://en.wikipedia.org/wiki/CoffeeScript)
* [Six Revisions](http://sixrevisions.com/javascript/coffeescript-basics/)
* [CoffeeScript and Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)
