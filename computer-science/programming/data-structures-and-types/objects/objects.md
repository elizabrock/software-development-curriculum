#Objects Overview

Objects are the basic building blocks of a Ruby OOP program. An object is a combination of data and methods. In a OOP program, we create objects. These objects communicate together through methods. Each object can receive messages, send messages and process data.
The first thing we do to create an object is define a class. A class is a template for an object. It is a blueprint that describes the state and behavior that the objects of the class all share. A class can be used to create many objects. Objects created at runtime from a class are called instances of that particular class.

Below is a small example of creating a class in irb.

    #!/usr/bin/ruby

    class Being

    end

    b = Being.new
    puts b


Methods on objects are available to all classes unless manually overridden.

In Ruby, everything is considered an object. Even a string is an example of a Ruby object. Each string object has its own identity exposed through methods like object_id, == and class. It also has to store the value of the string and thus has state. Methods like split, upcase, downcase expose the behavior of the object.

Ruby provides an object representation for methods as well. method(method_name) returns a method object that holds method_name.

In short:

Blocks, lambdas, Class - all of the them are objects. Every expression in Ruby evaluates to an object. These are all objects:

* Class
* Module
* Method
* Object.new
* "a string"
* 42
* lambda { puts "This is a block of code. An object!"}
* SomeUserDefinedClass.new


## Instance Methods Inside an Object

Instance variables are hidden away inside the object. As you can see in this example below, calling .instance_methods on an object reveals all of the instance methods that can be called on it. These are all of the methods for a made-up "Greeter" object. It is a complete list, including ones defined by any ancestor classes.

    irb(main):039:0> Greeter.instance_methods
     => ["method", "send", "object_id", "singleton_methods",
    "__send__", "equal?", "taint", "frozen?",
    "instance_variable_get", "kind_of?", "to_a",
    "instance_eval", "type", "protected_methods", "extend",
    "eql?", "display", "instance_variable_set", "hash",
    "is_a?", "to_s", "class", "tainted?", "private_methods",
    "untaint", "say_hi", "id", "inspect", "==", "===",
    "clone", "public_methods", "respond_to?", "freeze",
    "say_bye", "__id__", "=~", "methods", "nil?", "dup",
    "instance_variables", "instance_of?"]

## Object IDs Overview

Every Object in Ruby has its own ID. That means each Object will have an ID that is unique to itself. If two different variables are set equal to what appears to be the same object, they will still have different IDs. For example:

    obj = Object.new br

    another_obj = Object.new

    obj != another_obj

Cloning a variable that gets an object also creates a different obj:

    obj = Object.new

    copy = obj.clone

    obj != copy

However, with small integers, nil, true and false, this is not the case. These will ALWAYS have the same ID. For example, if I check the ID of the integer 3, shutdown irb, start up irb and then check it again, it will still
have the same ID. Here is a small example below:

    num = 1

    num2 = 1

    num.object_id == num2.object_id


### Works Cited / Further Reading
* http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/39-ruby-s-object-model/lessons/127-object-identity-what-is-an-object
* http://zetcode.com/lang/rubytutorial/oop/
* http://ruby-doc.org/core-2.1.2/Object.html
* http://skilldrick.co.uk/2011/08/understanding-the-ruby-object-model/
