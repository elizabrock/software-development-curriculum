# Introduction to Ruby

## What is Ruby?

Ruby is an object-oriented scripting language.  The philosophy of Ruby is to make programming as enjoyable as possible, with intuitive naming and concise syntax.

The Ruby language was developed by Yukihiro Matsumoto (Matz), beginning in 1993.

You can read much more in-depth summaries of the Ruby language on Wikipedia and the official Ruby website (referenced, below).

## Installing Ruby 2.2.0

The most current version of Ruby is 2.2.0.  However, most operating systems don't ship with Ruby 2, so you'll need to install Ruby 2.2.0.

There are some fairly major changes between versions of Ruby, so it is important that you are using a modern Ruby.

Regardless of whether you are using OS X or Ubuntu, I recommend using [RVM](http://rvm.io) to manage your ruby versions.

1. Run `ruby -v`.
  * If it prints out something involving '2.2', you're good to go.
  * Otherwise, keep following these directions.
2. Run `rvm`.
  * If it returns `-bash: rvm: command not found`, install rvm.
  * Instructions for installing rvm can be found here: http://rvm.io/
3. Run `rvm install 2.2.0`
  * RVM will compile ruby 2.2.0 for you.
  * If the compilation isn't successful, ask for help!  You can also google the error messages.
4. Run `rvm use --default 2.2.0`
  * It should print out something along the lines of: `Using /Users/elizabrock/.rvm/gems/ruby-2.2.0`
  * If it doesn't, ask for help!
5. Run `ruby -v`.  It should now be 2.2.0.
6. Close your terminal completely and then open a new terminal window.
Cross your fingers.
7. Run `ruby -v`.  It should still be 2.2.0.

## Exploring Ruby with irb

Once you have a modern version of Ruby installed, you can explore Ruby via the ruby command-line interface, by opening your terminal and running `irb`.

We'll cover irb in some depth in class.  However, if you're familiar with using the javascript console in your browser, `irb` should feel fairly familiar.

You can read a quick overview of using irb in Ruby in Twenty Minutes (referenced, below).

## Ruby Documentation (RDoc)

Ruby has excellent documentation.  The format for Ruby documentation is called RDoc, so you'll often see it referenced as such.

You can read the RDoc for Ruby at [http://ruby-doc.org/](http://ruby-doc.org/).

You can read more about RDoc in the RDoc Documentation article.

## Sources and Further Reading

* [Ruby Programming Language, Wikipedia](http://en.wikipedia.org/wiki/Ruby_(programming_language)#History)
* [Official Ruby Website](https://www.ruby-lang.org/en/about/)
* [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
* [Ruby-Doc.org](http://ruby-doc.org/)
