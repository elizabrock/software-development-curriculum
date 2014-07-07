# Booleans and Bits

Booleans (which really come down to bits) are the root of computer programming.

As such, you should now their origins.

## Bits

Wikipedia has a great definition of bit:

> A bit is the basic unit of information in computing and digital communications. A bit can have only one of two values, and may therefore be physically implemented with a two-state device. These values are most commonly represented as 0and1. The term bit is a portmanteau of binary digit.

In Computer Engineering and Electrical Engineering, physical gates are used to interact with bits.  See the article on gates for more information on how gates work and how they correlate to the logic we use in programming.

## Booleans

Booleans is a data type that correlates very closely to bits, because the possible values are true (1) and false (0).  In some languages, booleans and bits are represented in the same way, with the same values.

Booleans are most heavily used in conditional statements, for example:

    program_starting = true
    if program_starting
      puts 'hello'
    else
      puts 'goodbye'
    end

Boolean algebra (see the article on Logic) is used to incorporate logic into those conditional statements.  For example:

    authorized = true
    authenticated = false

    if authenticated and authorized
      puts "Welcome to the admin portal!"
    elsif authenticated
      puts "You must be authorized to access the admin panel"
    else
      puts "You must log in to access the admin panel"
    end

An understanding of basic boolean algebra allows us to know that the elseif statement doesn't need to make sure that the user isn't authorized, since we know that if the user isn't both authenticated and authorized but is authenticated, that means that they aren't authorized.

Definitely read the article on logic for more details!

## Resources:

* [Wikipedia: Bits](http://en.wikipedia.org/wiki/Bit)
* [Wikipedia: Boolean Data Type](http://en.wikipedia.org/wiki/Boolean_data_type)
* [Wikipedia: Conditionals](http://en.wikipedia.org/wiki/Conditional_(programming))
