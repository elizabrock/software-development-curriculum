# Exceptions

## What are exceptions?

An exception is an event that occurs when an error arises within your program. It can cause your program to quit immediately with an error message, or it can be handled by error-handling routines within the program. An exception is a packaged into a special kind of object and is an instance of the class Exception or a descendent of that class.

> By default, Ruby programs terminate when an exception occurs. But it is possible to declare exception handlers. An **exception handler** is a block of code that is executed if an exception occurs during the execution of some other block of code. *Raising an exception* means stopping normal execution of the program and transferring the flow-of-control to the exception handling code where you either deal with the problem that's been encountered or exit the program completely. Which of these happens - dealing with it or aborting the program - depends on whether you have provided a **rescue clause** (rescue is a fundamental part of the Ruby language). If you haven't provided such a clause, the program terminates; if you have, control flows to the rescue clause. [More from this article](http://rubylearning.com/satishtalim/ruby_exceptions.html)

## Types of Exceptions & Inheritance
Ruby has about 30 main predefined exception classes that deal with different types of errors, such as `NoMemoryError`, `RuntimeError`, `SecurityError`, `ZeroDivisionError`, and `NoMethodError`. The following is a complete list of the subclasses that inherit from Exception.

![types of exceptions](http://rubylearning.com/images/exception.jpg)

As you can see from the diagram, there is a hierarchy to how exceptions inherit from Exception. For example, `RuntimeError` inherits from `StandardError`, which inherits from Exception, which inherits from Object.

## The Rescue Clause

Here is an excellent explanation of the rescue clause:

> When raised, exceptions halt the execution of the program and trace their way back up the stack to find some code that can handle them. If no handler for the exception is found,  the program ceases execution and dies with an error message with information about the exception.
  However, in most situations, stopping a program because of a single error isn't necessary. The error might only be minor, or there might be an alternative option to try. Therefore it's possible to *handle* exceptions. In Ruby, the `rescue` clause is used, along with `begin` and `end`, to define blocks of code to handle exceptions. (from Peter Cooper's *Beginning Ruby*, p. 185)

For example:
~~~ ruby
begin
  puts 10 / 0
rescue
  puts "You caused an error!"
end
# => You caused an error!
~~~

In this example, `begin` and `end` define a section of code to run. When an exception is raised, because it occurs inside a block with a rescue section, the exception is handled by the code inside the rescue block instead of terminating the program. Instead of dying with a `ZeroDivisionError`, our message "You caused an error!" is printed to the screen.

The following quote illustrates why this is useful:

> If retrieving the contents of a Web page fails (if you're not connected to the Internet, for example), then the error-handling routine rescues the exception, alerts the user of an error, and then loads up some data from a local file instead -- certainly better than exiting the program immediately! (*Beginning Ruby*, p. 186)

## Raise a specific error

Why would you want to raise a specific error?

> For example, you might want to react differently  if there's a fatal flaw in the code, versus a simple error such as a lack of network connectivity. There might also be errors you want to ignore, and only specific exceptions you wish to handle. (*Beginning Ruby*, p. 186)

An example of raising your own type of exception:

~~~ ruby
class BadDataException < RuntimeError
end

class Person
  def initialize(name)
    raise BadDataException, "No name present" if name.empty?
  end
end
~~~

In this example, you've created your own `BadDataException` that inherits from the `RuntimeError` exception class. The point here is that you can handle different types of exceptions in different ways.

Here is an example with multiple `rescue` blocks:

~~~ ruby
begin
  # code here
rescue ZeroDivisionError
  # code to rescue the ZeroDivisionError exception here
rescue YourOwnException
  # code to rescue a different exception here
rescue
  # code that rescues all other kinds of exceptions here
end
~~~

In the above example, the exception is handled differently depending  on the type of exception raised.

You can also raise a new instance of Exception directly, as in the example below:

~~~ ruby
class CustomException < StandardError
  def initialize(data)
    @data = data
  end
end
# => nil

raise CustomException.new(a: "b")
# CustomException: CustomException
~~~

## `raise` and `fail` are synonyms

In Ruby, `fail` is synonymous to `raise`.

Some thoughts on stylistic concerns between `fail` and `raise` by Jim Weirich, quoted from an article by Avdi Grimm:

> An aside, because I use exceptions to indicate failures, I almost always use `fail` rather than `raise` in Ruby. `fail` and `raise` are synonyms so there is no difference except that `fail` more clearly communicates that the method has failed. The only time I use `raise` is when I am catching an exception and re-raising it, because here I’m *not* failing, but explicitly and purposefully raising an exception. [Full article](http://devblog.avdi.org/2014/05/21/jim-weirich-on-exceptions/)

[More on the topic of the fail keyword](http://stackoverflow.com/questions/18811675/what-does-the-fail-keyword-do-in-ruby)

## Ensure clause

`ensure` ensures a block of code is run regardless of exceptions raised in that block.

> Sometimes, you need to guarantee that some processing is done at the end of a block of code, regardless of whether an exception was raised. For example, you may have a file open on entry to the block and you need to make sure it gets closed as the block exits. [Full article](http://www.tutorialspoint.com/ruby/ruby_exceptions.htm)

**Syntax** for using `ensure`:
~~~ ruby
begin
  # process
  # raise exception
rescue
  # handle error
ensure
  # finally ensure execution
  # This will always execute.
end
~~~

**Example:**
~~~ ruby
begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end
~~~
