# Understanding Stack Traces

Don't panic.

We have covered that computers can be real pedantic assholes, right?

Stack traces are how they make sure you don’t forget.

Being able to understand stack traces is a very valuable skill!

## Anatomy of a Stack Trace

Stack traces start with a error type (from the example below, ZeroDivisionError), then a message (from the example below, "divided by 0") and then the full stack trace.

The stack traces describes the full call stack.  For now, you can think of the call stack as the list of methods in the program that haven't yet returned, and the methods that they are waiting for results from, listed with the most recently called methods on top. Call stacks are read from top to bottom.

## First Example:

    1.9.3-p194 :019 > b/a
     => 0
    1.9.3-p194 :020 > a = 3
     => 3
    1.9.3-p194 :021 > b = 0
     => 0
    1.9.3-p194 :022 > b/a
     => 0
    1.9.3-p194 :023 > a/b
    ZeroDivisionError: divided by 0
      from (irb):23:in `/'
      from (irb):23
      from /Users/elizabrock/.rvm/rubies/ruby-1.9.3-p194/bin/irb:16:in `<main>'


What is happening here? How do we fix it?

Start by describing the error type, then the message and finally, what line number it happened on.

<div style="height:200px"/>

* Error Type: ZeroDivisionError
* Message: divided by 0
* Line Number: line 23 of the irb session

### Fix:

Add a guard to make sure that b isn't 0.  For example:

    a/b if b > 0

Or:

    if b > 0
      a/b
    else
      0
    end

## Second Example:

    1.9.3-p0 :005 > Net::HTTP.get('foo', 'bar')
    NameError: uninitialized constant Net
      from (irb):5
      from /Users/eliza/.rvm/rubies/ruby-1.9.3-p0/bin/irb:16:in `<main>'

What is happening here? How do we fix it?

Start by describing the error type, then the message and finally, what line number it happened on.

<div style="height:200px"/>

* Error Type: NameError
* Message: uninitialized constant Net
* Line Number: line 5 of the irb session

Ruby can't find the Net module because it is part of the standard library, rather than part of Ruby core.

### Fix:

Require Net/HTTP:

    1.9.3-p0 :006 > require 'net/http'
     => true
    1.9.3-p0 :007 > Net::HTTP.get('foo', 'bar')

## Third Example:

    a, b = 1, nil
    b.size
    NoMethodError: undefined method `size' for nil:NilClass
      from (irb):15
      from /Users/eliza/.rvm/rubies/ruby-1.9.3-p0/bin/irb:16:in `<main>'

What is happening here? How do we fix it?

Start by describing the error type, then the message and finally, what line number it happened on.

<div style="height:200px"/>

* Error Type: NoMethodError
* Message: undefined method `size' for nil:NilClass
* Line Number: line 15 of the irb session

### Fix:

Add a guard to make sure that b isn't nil.

A not-so-rubyish solution:

    a, b = 1, nil

    if b == nil
      0
    else
      b.size
    end

A slightly better solution:

    a = 1
    b = nil

    if b.nil?
      0
    else
      b.size
    end

Better yet, we can just ask b if it has a size method:

    b.size if b.respond_to?(:size)

## Fourth Example:

    1.9.3-p194 :012 > my_string = "   my crazy string    "
     => "   my crazy string    "
    1.9.3-p194 :013 > my_string.strip(" ")
    ArgumentError: wrong number of arguments(1 for 0)
      from (irb):13:in `strip'
      from (irb):13
      from /Users/elizabrock/.rvm/rubies/ruby-1.9.3-p194/bin/irb:16:in `<main>'

What is happening here? How do we fix it?

Start by describing the error type, then the message and finally, what line number it happened on.

<div style="height:200px"/>

* Error Type: ArgumentError
* Message: wrong number of arguments(1 for 0)
* Line Number: line 13 of the irb session

### Fix:

Read the docs to figure out how strip works (http://www.ruby-doc.org/core-2.1.1/String.html#method-i-strip) and then remove the argument to strip:

    1.9.3-p194 :014 > my_string = "   my crazy string    "
     => "   my crazy string    "
    1.9.3-p194 :015 > my_string.strip
     => "my crazy string"

## Fifth Example:

    1.9.3-p194 :005 > arr =["Bluebeard", "Blackbeard", "Jack"]
     => ["Bluebeard", "Blackbeard", "Jack"]
    1.9.3-p194 :009 > arr.fetch(1)
     => "Blackbeard"
    1.9.3-p194 :010 > arr.fetch(4)
    IndexError: index 4 outside of array bounds: -3...3
      from (irb):10:in `fetch'
      from (irb):10
      from /Users/elizabrock/.rvm/rubies/ruby-1.9.3-p194/bin/irb:16:in `<main>'

What is happening here? How do we fix it?

Start by describing the error type, then the message and finally, what line number it happened on.

<div style="height:200px"/>

* Error Type: IndexError
* Message: index 4 outside of array bounds: -3...3
* Line Number: line 10 of the irb session

### Fix:

Switch to using the bracket accessor `[]`, which doesn't throw ArgumentErrors when you ask for items outside of the array length.  Or, we could make sure that our argument is a valid value.

    1.9.3-p194 :005 > arr =["Bluebeard", "Blackbeard", "Jack"]
     => ["Bluebeard", "Blackbeard", "Jack"]
    1.9.3-p194 :006 > arr[4]
     => nil

## Bonus Round:

    1.9.3-p0 :001 > require 'tab_delimited_importer'
    SyntaxError: /Users/keith/snip/lib/tab_delimited_importer.rb:19: syntax error, unexpected $end, expecting keyword_end
      from /Users/keith/.rvm/gems/ruby-1.9.3-p0/gems/activesupport-3.2.8/lib/active_support/dependencies.rb:251:in `require'

<div style="height:200px"/>

* Error Type: SyntaxError
* Message: syntax error, unexpected $end, expecting keyword_end
* Line Number: /Users/keith/snip/lib/tab_delimited_importer.rb:19

### Fix:

This error is telling us that there is a syntax error somewhere around line 19 of `tab_delimited_importer.rb`.

Specifically, it is telling us that the code used one type of end when we should have used the other.  The two types of "end" are`}` and `end`.  So, we need to open up `tab_delimited_importer.rb` and find the code block that we closed incorrectly.
