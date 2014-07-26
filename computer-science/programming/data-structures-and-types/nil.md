# NilClass

The class of the singleton object nil.

In Ruby, every value is an object. So nil is an object too. It is an instance of the NilClass.
~~~
> nil.class

=> NilClass
~~~
It should be noted that nil is always equal to nil.
~~~
> nil == nil

=> true
~~~
Theoretically, nil values should be incomparable.
But for practical reasons and to spare memory, nil object was made a singleton.
That is, there is always exactly one instance of the NilClass which can be simply referred to by typing nil.


The most useful method on the NilClass is the #nil? method. With it, you can check
to see if an object is nil.

~~~
unless my_object.nil?
  my_object.display_info()
else
  puts "There is no object!"
end
~~~

To keep things consistent, the #nil? method has been moved to the very top of the
object tree - to the Object class. Having that in mind, you can call this method
on any object you want and it will return a result rather than cause the NoMethodError to be raised:

~~~
> 5.nil?
=> false

> [1, 2, 3].nil?
=> false

> {:a => 1}[:b].nil?
=> true

> nil.nil?
=> true
~~~
### Bonus Info:
There's an interesting feature concerning the nil object implementation,
which many Ruby programmers don't even know about:
~~~
> nil.object_id
=> 4
~~~
Why is the object id of nil equal to 4? First, you need to know that false and
true variables work exactly the same way as nil does. They are singleton instances
of FalseClass and TrueClass, respectively. When the Ruby interpreter boots up,
it initializes FalseClass, TrueClass and NilClass. The result is:
~~~
> false.object_id
=> 0
 
> true.object_id
=> 2
 
> nil.object_id
=> 4
~~~
What happened to 1 and 3? The first bit is reserved for Fixnum values (numbers) only.
### References
http://www.ruby-doc.org/core-2.1.1/NilClass.html
http://lukaszwrobel.pl/blog/ruby-is-nil
http://robots.thoughtbot.com/if-you-gaze-into-nil-nil-gazes-also-into-you
