# Haml overview

## What is Haml?
  Haml (HTML abstraction markup language) is a templating engine created in 2006
by Hampton Catlin designed to streamline ERB for leaner files while including
the power of embedded Ruby.  
  
## How it works
  A key aspect of HAML is to simplify markup so that it's easier to read and 
more user-friendly. By relying on indentation, whitespace and nesting, Haml eliminates
the need to include HTML closing tags as it generates both opening and closing tags 
during output, adding to its DRY-ness and decluttering the markup. Besides being used 
as a plugin for Ruby on Rails or as its own module, Haml can be run from the command 
line to convert Haml files to HTML.

  Haml tags open with a % sign, and they closely resemble CSS in that they designate
ids and classes using # and . respectively. For instance, a div with the id of
item and a class of inventory would be written as:
  
  `%div#item.inventory`

Note the div element mustn't explicitly be listed because divs are so commonly
used. The above tag could also be written as:
  
  `#item.inventory`

Including a paragraph element with a class of description inside the above tag would
be written as:

        #item.inventory
          %p.description

The = sign is used to insert Ruby code into the Haml document to be evaluated
and help dynamically alter the markup. The - sign is used to evaluate ruby code 
that will not be inserted into the document. Haml also integrates the use of Ruby 
arrays as well as local and instance variables. For more on these aspects 
of implementing Haml, check the links below, specifically the Haml reference page.

## Further Reading

* https://www.ruby-toolbox.com/categories/template_engines
* http://en.wikipedia.org/wiki/Haml

## Sources

* http://haml.info/about.html
* http://haml.info/docs/yardoc/file.REFERENCE.html
* https://github.com/haml/haml
