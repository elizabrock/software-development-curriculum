# Introduction to Modules

### Definition Part 1:
Ruby modules allow you to create groups of methods that you can * include *
or *mix* into any number of classes.  Modules only hold behavior, unlike
classes, which hold both behavior *and* state.

 A module cannot be instantiated, which means that there is no way for its method
to be called directly.  It should be included in another class, which makes its methods
available for use in instances of that class.


 In order to include a module into a class, we use the method `include` which takes
one parameter - the name of a `Module`.

*Example Code: Write the module and include it: *

    module Repair
      def take_to_mechanic
        "Time to take this to the mechanic."
      end
    end

    class Car
      include Repair

      def change_brakes
        "Let's change the brakes."
      end
    end

    class Lawnmower
      include Repair

      def fix_rotors
        "Let's fix the rotors."
      end
    end

Using the Repair module:

    puts Car.new.take_to_mechanic
      => "Time to take this to the mechanic."

    puts Lawnmower.new.take_to_mechanic
      => "Time to take this to the mechanic."

### Definition Part 2:

Modules are very similar to classes in that they hold a collection of methods,
constants, and other module and class definitions.  However, * unlike classes, you
cannot create objects based on modules nor can you subclass them. *  Modules stand alone;
there is no "module hierarchy" of inheritance.  Because of this, modules are a good place to
collect all your constants in a central location.

 The `include` method accepts any number of module objects to mix in:

    include Enumerable, Comparable

Class names tend to be nouns, while module names are often adjectives.

### Class Methods Overwrite Module Methods:
Class methods can overwrite module methods.  See example below.

    module Nameable
      def set_name(new_name)
        @name = new_name
      end

      def here
        :in_module
      end
    end

    class Dog
      include Nameable

      attr_reader :name

      def initialize
        @name = "Fido"
      end

      def bark
        "WOOF"
      end

      def here
        :in_object
      end
    end

Creating a new `Dog` object and calling `new_dog.here` will result in
`:in_object` as the output, rather than `:in_module`.

    > new_dog = Dog.new
    > new.dog.here
      => :in_object

## Sources and Further Reading
* Source: http://rubymonk.com/learning/books/1-ruby-primer/chapters/35-modules/lessons/79-getting-modular<
* Source: http://rubylearning.com/satishtalim/modules_mixins.html
* Source: http://rubykoans.com/
