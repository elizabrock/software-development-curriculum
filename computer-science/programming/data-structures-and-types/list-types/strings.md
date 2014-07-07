# Strings

Strings are basically just arrays of characters.

Read the RDoc!

## String Interpolation

Ok, so maybe strings are a little bit more complicated than arrays.

One of the major cool things that you can do with strings is string interpolation:

    first_name = "Eliza"
    full_name = "#{first_name} Marcum"
    puts full_name #=> "Eliza Marcum"

## Escape/Control Characters

See the article on the character data type.

## Single vs. Double Quoted Strings

     | Name               | single quoted string       | double quoted string                 |
     | Symbol             | '                          | "                                    |
     | Interpolation?     | no                         | yes!                                 |
     | Escape Characters? | yes                        | yes                                  |
     | Allowed Characters | anything but single quotes | anything but unescaped double quotes |


## Sources and Further Reading

* [String RDoc](http://www.ruby-doc.org/core-2.1.2/String.html)
