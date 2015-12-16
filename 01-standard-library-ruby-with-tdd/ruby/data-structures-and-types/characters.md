# Characters

A character is a representation of a single letter/digit/symbol.

Characters are stored using an encoding, such as UTF-8, or ASCII.  Different encodings allow for different character sets- for example ASCII is based on the English alphabet and its character set doesn't include any other types of characters (e.g. cyrillic, ).  Each character in an encoding is represented by a byte sequence (essentially, a number).

Characters are typically stored as integers, but printed out as glyphs (characters).

## Regular Characters

Regular characters are the characters that are visible.  For example, a-Z, 0-9 and punctuation.

## Escape/Control Characters

Control characters are characters that represent invisible characters, such as whitespace (tabs and newlines), special characters and various control sequences.  Examples:

  * '\t' - tab
  * '\n' - newline
  * '\r' - carriage return
  * '\b' - backspace
  * '\a' - bell (sound)
  * '\e' - escape sequence
  * "\"" - a double-quote\*

\* Double quotes only need to be escaped if they are embedded in a double-quoted string.

## Sources and Further Reading

* [Character Encoding (Wikipedia)](http://en.wikipedia.org/wiki/Character_encoding)
* [ASCII (WIkipedia)](http://en.wikipedia.org/wiki/ASCII)
* [UTF-8 (Wikipedia)](http://en.wikipedia.org/wiki/UTF-8)
* [Unicode 7.0 Character Code Charts](http://www.unicode.org/charts/index.html)
* [Escape Characters](http://en.wikipedia.org/wiki/Escape_character)
