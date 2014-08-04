# Symbols
A symbol in computer programming is a primitive datatype whose instances have a unique human-readable form. Symbols can be used as identifiers. In some programming languages, they are called atoms. (wiki)
## From the Koans
* Symbols are an instance of Symbol
* Symbols can be compared for equality
* There is only ever one instance of a given symbol
  * For example, if variable_1 and variable_2 are both set equal to :my_symbol, then the object id's of variable_1 and variable_2 are equivalent
* Method names become symbols (since they are unique)
* Strings can be converted to symbols using .to_sym
* Symbols can also be instantiated by using strings, with or without interpolation
  * For example, if variable = "awesome", :"my #{variable} symbol" will evaluate to :my awesome symbol
  * String instantiation must be used if spaces are required in the symbol name
* Symbols are not instances of strings, and therefor do not have any associated string methods


## Sources and Further Reading
* http://www.ruby-doc.org/core-2.1.2/Symbol.html
* http://www.troubleshooters.com/codecorn/ruby/symbols.htm
