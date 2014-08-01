# Ruby Strings

## Intro

Strings are basically just arrays of characters.

Read the RDoc!

Ok, so maybe strings are a little bit more complicated than arrays.

### Quotations

You can define a string with quotes, both single and double.

    > string1 = 'This is a string'

    > string2 = "This is also a string"

    > bad_string = "Just be sure to pick one type of quotation or the other, not both'

What happens, though, if you want to use quotations inside your string? Simple: just wrap your string with the opposite quotation type.

    > string1 = "Don't try this inside single quotes, y'all"

    > string2 = '"I must meet this man", the princess said.'

What if you need to use both single AND double quotes in your string? Don't panic. You can use either quotation type inside a string wrapped by the same type. Just prepend your inner quotes with a backslash.

    > string1 = 'Well maybe I\'m not "the norm". I\'m not "camera friendly", I don\'t "wear clothes that fit me", I\'m not a "heartbreaker"'

### Flexible Strings

Don't want to deal with prepending quotations with backslashes? It could get especially messy when dealing with string variables and user input. Maybe flexible strings are for you.

    > flex_string1 = %{Try this - now you can use both " and ' without prepending anything}

    > flex_string2 = %~Flexible strings aren't limited to just {} - There are many characters that can be used as delimiters~

    > flex_string3 = %[You can even nest your delimiters inside your string [like this] when using characters like brackets and parentheses]

    > flex_string4 = %(Line breaks are even possible
    > in flexible strings
    > without using \n.
    > )

Ever used a here document in your code before? Here documents also support multiple lines in Ruby.

    > here_doc = <<EOS
    > Just as in flexible strings,
    > line breaks can be used here
    > without bothering with \n
    > EOS

See the article on the character data type.

## Concatenation

### Plus (And Plus-Equals)

To concatenate two strings, simply use the plus sign.

    > string1 = "Hello,"
    > string2 = " World"
    > string_combined = string1 + string2

Don't worry, concatenation will not modify your original strings. Therefore, after this operation, the values of the strings will be as follows:

    > string1

    => "Hello,"

    > string2

    => " World"

    > string_combined

    => "Hello, World"

As with numbers, if you DO want to change the value of your original variable, you can use the plus-equals operator (+=).

    > string1 += string2

After this operation:

    > string1

    => "Hello, World"

Keep in mind, however, that += will only change the value of the string VARIABLE, not the string itself. For this reason, if we tried something like this...

    > string1 = "Hello,"
    > string2 = " World"
    > string3 = string1
    > string3 += string2

... the value assigned to string1 will not be changed. The variables would have these values:

    > string1

    => "Hello,"

    > string2

    => " World"

    > string3

    => "Hello, World"

### Shovel

A similar operator to += is the shovel operator (<<). It's notable difference from += is that it WILL modify the original string variable. Therefore, if we were to run the same code that we just ran, but switched out += for << ...

    > string1 = "Hello,"
    > string2 = " World"
    > string3 = string1
    > string3 << string2

... string1 will be modified in the same way as string3:

    > string1

    => "Hello, World"

    > string2

    => " World"

    > string3

    => "Hello, World"

### Strings As Objects

This would be a good time to point out that all strings are separate objects with their own unique IDs, even if their values are identical. Therefore, each of the following strings will have an object ID unique to itself, and not equal to that of any of the other strings.

    > string1 = 'here is a string'
    > string2 = 'here is a string'
    > string3 = 'here is a string'
    > string4 = 'here is another string'

## Differences - Single and Double Quotes

Although everything explained thus far works essentially the same whether you choose to use single or double quotes, there are some notable differences between the two quotation types that should be understood before diving in much further.

### Escape/Control Characters

As with many languages, Ruby allows escape characters for 'tricky' characters, like quotations (which we saw above), backslashes, tabs, and new lines. While double-quoted strings will interpret all of these escape characters, some will not be recognized in single-quoted strings.

    > double_quoted_string = "This will be on line 1 \n and this will be on line 2"
    > single_quoted_string1 = 'This will all be on one line \n and the attempted line break will disply as-is, uninterpreted'
    > single_quoted_string2 = 'Of course, some escpae charcters, like that for a single quote (\'), will be interpreted successfully'

     | Name               | single quoted string       | double quoted string                 |
     | Symbol             | '                          | "                                    |
     | Interpolation?     | no                         | yes!                                 |
     | Escape Characters? | yes                        | yes                                  |
     | Allowed Characters | anything but single quotes | anything but unescaped double quotes |

### Interpolated values

One of the major cool things that you can do with strings is string interpolation. You can use double quotes to include variable values in your string. Try this with single quotes however, and what you see will literally be what you get.:

    > first_name = "Eliza"
    > full_name = "#{first_name} Marcum"
    > puts full_name #=> "Eliza Marcum"

    > score = 999999
    > double_quoted_string = "High Score: #{score}" #=> High Score: 999999
    > single_quoted_string = 'High Score: #{score}' #=> High Score: #{score}

There's no requirement to store the value that you want in a single variable either. Ruby strings are also capable of interpolating Ruby expressions.

    > number = 100
    > double_quoted_string = "Square Root: #{Math.sqrt(number)}" #=> Square Root: 10

## Substrings

### Strings as Arrays

Because strings are essentially arrays of characters, you can break a string down into pieces by accessing only the character(s) you want. Specify a range in order to select several characters at once. If you want only one character, then specify which on by its index.

    > string = "I'm not wearing hockey pads"
    > verb1 = string[16, 6]    > #=> hockey
    > verb2 = string[16..21]    > #=> hockey
    > who_is_it = string[0]    > #=> I

Notice that ranges of characters can be specified by a start and a length or a start and an end.

### Old Ruby

It is worth noting that in older versions of Ruby, single-character strings were represented by integers. 'a' = 97, 'b' = 98, 'c' = 99, etc. In the more recent versions, this is no longer the case.

## String / Array Conversions

### Split

An often useful functions for strings is the 'split' function. 'Split' will take any provided string and separate it into an array of strings. As input, the 'split' functions needs a separtor. The separator can be any string of any length.

    > string1 = "You're about to see a list of items that need to be stored in an array"
    > string2 = "red, orange, yellow, green, blue, purple"
    > array1 = string1.split
    > array2 = string2.split(/,\s/)

Did you notice anything unusual? Yep, that's right: we never provided any input for the split performed on string1. By default, this will split the string using a space as the separator. See anything else unusual here? Correct again: we didn't specify our separator on string2 as a string. Instead, we used a regular expression. This specific expression will split using a comma and a space together as the separator:

    > array1

    => ["You're", "about", "to", "see", "a", "list", "of", "items", "that", "need", "to", "be", "stored", "in", "an", "array"]

    > array2

    => ["red", "orange", "yellow", "green", "blue", "purple"]`

### Join

What if we need to do the exact opposite of split? What if we have an array that needs to be converted into a string, element by element? You could always loop over the array and concatinate each element, but that's clunky, especially since there is already a way to do this with a single function: 'join'.

Just as 'split' required a separator, 'join' reqires some string to insert between each element in the array. This time however, we use an actual string as our input, instead of a regular expression.

    > joined_string = array2.join('::')
    => "red::orange::yellow::green::blue::purple"

## Sources And Further Reading

* [About.com - Splitting Strings](http://ruby.about.com/od/strings/a/Splitting-Strings.htm)

* [Flexible Strings](http://stackoverflow.com/questions/22107174/is-there-a-difference-between-flexible-quotes-in-ruby) - (Although forums are not true reference material, the information here is useful) -

* [String RDoc](http://www.ruby-doc.org/core-2.1.2/String.html)