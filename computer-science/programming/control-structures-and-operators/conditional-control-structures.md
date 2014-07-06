# Conditional Control Structures (in Ruby)

This is a quick summary of block-based control structures in Ruby.

## If / Else / Elsif

An if statement without an else:

    if x == y
      puts "hello"
    end

An if-else statement:

    if x == y
      puts "hello"
    else
      puts "world"
    end

An if-elsif-else statement:

    if x == y
      puts "hello"
    elsif x == z
      puts "dear"
    else
      puts "world"
    end

## Ternary Operator

The ternary operator is an alternative to traditional if-else statements.

    (x == y) ? 'a' : 'an'

is equivalent to:

    if x == y
      'a'
    else
      'an'
    end

For short if-else statements, the ternary form can be shorter and clearer.  However, it is easy to overuse the ternary operator in ways that make the code more obtuse.

## Unless

An unless statement is the reverse of an if statement

    if !foo
      puts "It's not foo!"
    end

is equivalent to:

    unless foo
      puts "It's not foo!"
    end

Unless statements can sometimes make it clearer what a piece of code actually does.
