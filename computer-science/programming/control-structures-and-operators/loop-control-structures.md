# Loop Control Structures (in Ruby)

This is a quick summary of loop-based control structures in Ruby.

## While/Until

It's rare that you'll use a `while` or `until` loop, unless you're doing some fairly serious data structures work.  It is much more idiomatic Ruby to use `each`, `times` and `map` for looping.

## each

If you want to do something once for each item in an array:

    my_array = ["foo", "bar", "grille"]
    my_array.each do |item|
        puts "The next item is: #{item}"
    end

which outputs:

    The next item is: foo
    The next item is: bar
    The next item is: grille

## each_with_index

If you want to do something once for each item in an array, and you want to know what the index of the item was:

    my_array = ["foo", "bar", "grille"]
    my_array.each_with_index do |item, index|
        puts "Item #{index} is: #{item}"
    end

which outputs:

    Item 0 is: foo
    Item 1 is: bar
    Item 2 is: grille


## times

If you want to do something 10 times:

    age = 10
    age.times do |i|
      puts "You're older than #{i}."
    end

which outputs:

    You're older than 0.
    You're older than 1.
    You're older than 2.
    You're older than 3.
    You're older than 4.
    You're older than 5.
    You're older than 6.
    You're older than 7.
    You're older than 8.
    You're older than 9.

## map / inject

If you want to transform a list:

    my_array = ["foo", "bar", "grille"]
    output = my_array.map do |item|
      item.upcase
    end
    puts output

which outputs:

    ["FOO", "BAR", "GRILLE"]
