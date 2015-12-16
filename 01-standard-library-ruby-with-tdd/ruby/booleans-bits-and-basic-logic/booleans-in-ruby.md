# Booleans in Ruby

Every expression and object in Ruby has a boolean value evaluating to either true or false and everything is true in ruby except false and nil

## True and False
    a == b : True if a is equal to b, else false
    a != b : True if a is not equal to b, else false
    a > b : True if a is greater than b, else false
    a < b : True if a is less than b, else false
    a >= b : True if a is greater than or equal to b, else false
    a <= b : True if a is less than or equal to b, else false
    a =~ b : If a is a string and b is a regular expression, it will return true if the regular expression matches within a, else false
    a !~ b : If a is a string and b is a regular expression, it will return true if the regular expression does not match within a, else false

## Example Method evaluating true or false
    def true?(x)
      if x
        puts "true"
      else
        puts "false"
      end
    end

    true?(10) evaluates to true
    true?("foo bar") evaluates to true
    true?([1, "Hi Mom", true]) evaluates to true
    true?() evaluates to false

## Sources and Further Reading

* http://www.skorks.com/2009/09/true-false-and-nil-objects-in-ruby/
* http://ruby.about.com/od/control/a/Boolean-Expressions.htm
