#Modules

###Definition Part 1:
<p> Ruby modules allow you to create groups of methods that you can <i> include </i>
or <i> mix </i> into any number of classes.  Modules only hold behavior, unlike
classes, which hold both behavior <i> and </i> state. </p>

<p> A module cannot be instantiated, which means that there is no way for its method
to be called directly.  It should be included in another class, which makes its methods
available for use in instances of that class.
</p>

<p> In order to include a module into a class, we use the method `include` which takes
one parameter - the name of a `Module`. </p>

<i>Example Code: Write the module and include it: </i>
~~~
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
~~~

<i> Using the Repair module:

~~~
puts Car.new.take_to_mechanic
  => "Time to take this to the mechanic."

puts Lawnmower.new.take_to_mechanic
  => "Time to take this to the mechanic."
~~~

<i>Source: http://rubymonk.com/learning/books/1-ruby-primer/chapters/35-modules/lessons/79-getting-modular</i>

###Definition Part 2:

<p> Modules are very similar to classes in that they hold a collection of methods,
constants, and other module and class definitions.  However, <i> unlike classes, you
cannot create objects based on modules nor can you subclass them. </i>  Modules stand alone;
there is no "module hierarchy" of inheritance.  Because of this, modules are a good place to
collect all your constants in a central location. </p>

<p> The `include` method accepts any number of module objects to mix in:</p>

~~~
include Enumerable, Comparable
~~~
<p> Class names tend to be nouns, while module names are often adjectives.</p>

<i> Source: http://rubylearning.com/satishtalim/modules_mixins.html </i>

###Class Methods Overwrite Module Methods:
<p>Class methods can overwrite module methods.  See example below.</p>

~~~
module Nameable
  def set_name(new_name)
    @name = new_name
  end

  def here
    :in_module
  end
end
~~~

~~~
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
~~~

<p>Creating a new `Dog` object and calling `new_dog.here` will result in
`:in_object` as the output, rather than `:in_module`.</p>

~~~
> new_dog = Dog.new
> new.dog.here
  => :in_object
~~~

<i> Source: http://rubykoans.com/ </i>
