# Proxy Classes

### Proxy General Definition
The authority to represent someone or something else (for example, voting, or a personal check)

### Proxy Computer Science Definition
A class functioning as an interface to something else

## Reasons to Use a Proxy Class
-  To pass messages to another class, perhaps with some data scrubbing
-  To provide an interface to another object to control access to it
-  To simplify an existing interface that you don't control
-  To delay the expense of creating an object until it's necessary

## Types of Proxies
### Protective/Remote
A wrapper class that prevents access to some of the encapsulated methods
### Messaging
A class that passes messages to another class
### Virtual
To delay creating a resource-hungry object until they are really needed

## Ruby's method_missing method
Any additional code/structure that's not provided in the Proxy class can be forwarded to some other class (the Proxy is working on behalf of this other class).  This is done via the Ruby method_missing method.  It may be implemented as part of the Proxy class.

## Link to Completed Proxy Koan
[Completed Proxy Koan](https://github.com/javierjulio/ruby-koans-completed/blob/master/about_proxy_object_project.rb)

## References
[Proxy Design Pattern](http://en.wikipedia.org/wiki/Proxy_pattern)

[Proxy Example](http://www.binarylogic.com/2009/08/07/how-to-create-a-proxy-class-in-ruby/)

[Proxy Design Pattern](http://sourcemaking.com/design_patterns/proxy)
