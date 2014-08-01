#Iterators (in Ruby)
This is a quick summary of iterators in Ruby

fun fact: "iter" is latin for journey

## each
each executes an operation for all objects in whatever (e.g., a string, an array) the method is called upon

block usage:

  array = [1, 2, 3]
  array.each |num|
    puts num
  end

returns
  1
  2
  3

in-line usage of `.each_byte`:
  "string".each_byte{|numeric_value_for_character| puts numeric_value_for_character}

returns
  115
  116
  114
  105
  110
  103

in-line usage of `.each_line`:
  "st\nri\nng".each_line{|line| puts line}
returns
  st
  ri
  ng

## while
executes an operation as long as the conditional returns true

  i = 0
  while i < "string".length
     puts "string"[i]
     i+=1
  end

returns
  s
  t
  r
  i
  n
  g

## retry:
retry starts a statement from the beginning

## yield:
yield could be thought of as standing in for a block of code
that one passes to a function
in other words, if one provides block of code as an argument to a function
that block of code will run where one has typed yield
  def repeat(num)
    while num > 0
      yield
      num -= 1
    end
  end

  repeat(3) {print "foo\n"}

returns
  foo
  foo
  foo  

{print "foo\n"} runs where one has written yield


## .map method
map iterates through an array and does an operation on each object

  vegetables = ["carrots", "peas", "potatos"]

  i_like = vegetables.map do |v|
    "delicious " + v
  end

returns

  ["delicious carrots", "delicious peas", "delicious potatos"]  

.map! will alter the existing array
so in this instance it would change vegetables

## .times
.times will execute an operation a specified number of times

  print "how many licks does it take"
  print " to get to the center of a tootsie pop?"
  array = ["one", "two", "three"]
  3.times do |num|
    puts "#{array[i]}"
  end

returns
  "one"
  "two"
  "three"  

## until
one can use until to specify a condition that will stop the iterator
for instance
until i = 3
would stop the iterator when i reached three

## sources:
  * http://www.ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/iterators.html  
  * http://code.tutsplus.com/tutorials/ruby-for-newbies-iterators-and-blocks--net-17089
  * https://thenewcircle.com/static/bookshelf/ruby_tutorial/iterators.html
