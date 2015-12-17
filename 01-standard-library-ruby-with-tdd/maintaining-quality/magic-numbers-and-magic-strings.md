# Magic Numbers and Magic Strings

## Magic Numbers

A magic number is a literal value that appears in a program.

Examples:
* `sales_price = regular_price * 0.1`
* CSS layouts, in general (margin + padding)

### Example Using Magic Numbers

    class MagicDeck
      def chances_of_getting_card
        # Noooooooooo....
        0.019
      end
    end

### Corrected Example

    class Deck
      def initialize(deck_size)
        @deck_size = deck_size
      end

      def chances_of_getting_card
        1 / @deck_size
      end
    end


## Magic Strings

A magic string is the same as a magic number, but is instead a string.

### Example Using Magic Strings

This string is magical, both because it's hard to judge how many spaces are in the string, and because we have no idea why it is that number of spaces long:

    def format_output(input)
      return input + "              "
    end

### Corrected Examples

If we extract the spaces out into a variable, we at least know what the spaces are for.

    def format_output(input)
      right_padding = "              "
      return input + padding
    end

or:

def format_output(input)
  right_padding = " " * 20
  return input + padding
end

However, we still don't know *why* it's 20 spaces long.  It would be better to extract out *how* we came to the conclusion that it should be 20 spaces.  In this case, it would appear that the input is expected to be 6 characters long, and needs to take up 26 characters of space.  By making this math explicit, we are also preventing ourselves from having weird formatting bugs if the input is longer or shorter than expected.

    LINE_LENGTH = 26
    def format_output(input)
      right_padding = " " * (LINE_LENGTH - output.length)
      return input + right_padding
    end

The best solution is to take that one step farther and use the constant in conjunction with a built-in string method to make it simpler and easier to read.

    LINE_LENGTH = 26
    def format_output(input)
      return input.ljust(LINE_LENGTH)
    end
