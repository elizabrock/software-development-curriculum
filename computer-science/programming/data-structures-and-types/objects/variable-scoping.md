# Variable Scoping

"Scope" refers to the visibility of identifiers, specifically variables and constants.

## Types of Variables

### Global Variables

A _global variable_ is a variable with global scope — that is, it's available everywhere within a program and never goes "out of scope."  Global variables are preceded by `$` in Ruby.

### Constants

A _constant_ is easily identified by its initial capital letter.  Constants cannot be changed once set.  If the constant is a string, the string can be changed, but where the constant points does not change.

####Did you know?
* Class names are just constants.

```
class AboutScope < Neo::Koan
  class String
  end
end

MyString = ::String

MyString == ::String
MyString == "HI".class
```
* Constants can be looked up explicitly.

```
PI == AboutScope.const_get("PI")
```
* You can get a list of constants for any class or module.

```
  module Jims
    class Dog
      def identify
        :jims_dog
      end
    end
    class Cat
      def identify
        :jims_cat
      end
    end
  end

  module Joes
    class Dog
      def identify
        :joes_dog
      end
    end
  end

  Jims.constants == [:Dog, :Cat]

```

### Instance Variables

An _instance variable_ begins with an `@` and its scope is confined to whatever object `self` refers to. Two different objects, even if they belong to the same class, can have different values for their instance variables.

Instance variables do not need to be declared.

### Class Variables

_Class variables_ start with `@@` and are available inside class definitions and instance methods.  Unlike instance variables, class variables must be initialized/declared before they can be accessed.

### Local Variables

A _local variable_ starts with a lowercase character or an `_` (underscore). Unlike global and instance variables, local variables do not have the value _nil_ before they are initialized.

```
ruby> $foo
   nil
ruby> @foo
   nil
ruby> foo
ERR: (eval):1: undefined local variable or method `foo' for main(Object)__
```

The scope of a local variable is confined to where it is.


## Sources

* Black, David A. _The Well-Grounded Rubyist, Second Edition_
* [Ruby User's Guide - Local variables](http://www.rubyist.net/~slagell/ruby/localvars.html)
* [New Circle Ruby Tutorial - Scope](https://thenewcircle.com/static/bookshelf/ruby_tutorial/scope.html)
