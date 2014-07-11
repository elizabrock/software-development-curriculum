# Classes and Inheritance

## Classes

### A Little About Classes

A **class** is the blueprint from which individual objects are created.

In Ruby, classes are first-class objects--each is an instance of class <code>Class</code>.

### How to Define A Class

A class always starts with the keyword *class*, followed by the name of the class. The name of the class should always start with a capital letter. By convention, names that contain more than one word are run together with each word capitalized and no separating characters (aka CamelCase). You terminate a class by using the keyword *end*.

Here is an example of how to define a class:

      class Name
        # some class describing the class behavior
      end

An object of type Class is initialized when a new class is created and assigned to a global constant(<code>Name</code> in this case).

### More About Classes

The class definition may contain method, class variable, and instance variable declarations as well as calls to methods that execute in the class context at read time, such as attr_accessor.

Classes, modules, and objects are interrelated. Check out the diagram below. The vertical arrows represent inheritance and the parentheses represent meta-classes. All meta-classes are instances of the class 'Class'.

                                     +---------+             +-...
                               |         |             |
               BasicObject-----|-->(BasicObject)-------|-...
                   ^           |         ^             |
                   |           |         |             |
                Object---------|----->(Object)---------|-...
                   ^           |         ^             |
                   |           |         |             |
                   +-------+   |         +--------+    |
                   |       |   |         |        |    |
                   |    Module-|---------|--->(Module)-|-...
                   |       ^   |         |        ^    |
                   |       |   |         |        |    |
                   |     Class-|---------|---->(Class)-|-...
                   |       ^   |         |        ^    |
                   |       +---+         |        +----+
                   |                     |
      obj--->OtherClass---------->(OtherClass)-----------...

A class is used to construct an object. You can ask any object of which class it is a member of by using its Object.class method. For example:

      class Dog
        d = Dog.new('Husky', 'Sasha')
        puts d.class
      end  

The output would be:

      Dog

Instances of classes can be created with <code>.new</code>. For example:

      fido = Dog.new  

### Instance Variables

Instance variables are created for each class instance and are accessible only within that instance. They are accessed using the @ operator. Outside of the class definition, the value of an instance variable can only be read or modified via that instance's public methods. For example:

      class MyClass
        @one = 1
        def do_something
          @one = 2
        end
        def output
          puts @one
        end  
      end
      instance = MyClass.new
      instance.output
      instance.do_something
      instance.output

This outputs:

      nil
      2

The <code>nil</code> in the first output line happens because <code>@one</code> defined below *class MyClass* is an instance variable belonging to the class object, whereas <code>@one</code> defined inside the *do_something* method is an instance variable belonging to instances of *MyClass*. They are two distinct variables and the first is accessible only in a class method.

## Sources and Further Reading
* [Class RDoc](http://www.ruby-doc.org/core-2.1.2/Class.html)
* [Writing our own Class in Ruby](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html)
* [Ruby Classes and Objects](http://www.tutorialspoint.com/ruby/ruby_classes.htm)
