RSpec Unit Testing
==================

## How To Start
### Resources To Reference

  - [Relish-App](https://relishapp.com/rspec)
  - [RSpec Github](https://github.com/rspec/rspec)
  - [ThoughtBot](http://robots.thoughtbot.com/how-we-test-rails-applications)
  - [Treehouse Blog](http://blog.teamtreehouse.com/an-introduction-to-rspec)

  I found this the most useful:
  - [Code School](https://www.codeschool.com/courses/testing-with-rspec)

### In Your Project

  The RSpec Gem is really a collection of three separate Gems:
  - rspec-core
  - rspec-expectations
  - rspec-mocks

To get started, either run `Gem install rspec`, or put `rspec` in your
Gemfile. If you added `rspec` to the Gemfile, don't forget to run `bundle install`
in the terminal in your project's directory root.

### File Directory Structure
  RSpec testing will be set up in the `spec` directory in the project root. Inside
  the spec directory you will have subdirectories such as:
  -  models
  -  features
  -  mailers
  -  support
  -  controllers

  In addition to these directories you will usually have a `spec_helper.rb` file
  which contains test helper methods, and anything that needs to be required for
  any of your tests to run, to avoid having to require files more than once in
  different locations. In a rails project with RSpec the spec helper will be
  where you `require 'rspec/rails'` and `require 'rspec/autorun'`.

## Why Unit Test?
  Unit testing is aimed at proving that individual methods you write work as they
  are supposed to. These methods in rails are generally going to be on the models,
  but not always, as there are reasons to Unit Test helper methods as well.

  Unit tests are fairly "low-level". Meaning, unlike integration tests, the tests
  are independent from one another usually, and more specific to one task.
  When a unit test fails at some point down the line it can be a very specific problem
  and is much easier to find exactly where the issue is quicker than if an
  application only had integration tests.

  Projects can take a long time to finish. Unit tests are a way of showing progress
  on a large project, and will ultimately lead to far fewer bugs down the road.

## Why RSpec?
  RSpec is often preferred by Rails Developers over the standard Test::Unit
  for a few reasons, however a lot of times the Test framework you use
  is a matter of personal preference. The output from RSpec is more readable by
  a human. The syntax you write the tests in is also more readable, which will
  help you not only write tests faster, but understand other tests better.

## Terminology
  RSpec has a few specific ways of referring to tets, that you may not be used to. The first
  may be slightly obvious, but the word **spec** is used almost entirely instead of **test**. A spec
  being the entire spec file. Every **it** statement is called an **example**. And the
  assertion line itself is called an **expectation**. Within the expectation you have
  the **matcher**, which could be a `<` or `==` among others, and you also have the **modifier** which
  could `should` or `should_not` among others.


## Examples

```ruby
describe Person do
  it "is named Bob" do
    person = Person.new
    person.name.should == 'Bob'
  end
  it "is not named sue" do
    person = Person.new
    person.name.should_not == 'Sue'
  end
end
```

  In this example, the whole block of code would be a **spec**. Each `it` block is a
  seperate **example**. The `person.name.should == 'Bob'` is an **expectation**.
  The `==` is the **matcher** and the `should` or `should_not` is the **modifier**.


  Gems such as Active Record do a lot of validation for you, that doesn't mean you
  shouldn't test it. Here is a simple example of testing one of those validations:

```ruby
  it {should validate_uniqueness_of :email}
```
  As you can see, reading the test speaks for itself, which is one of the advantages of RSpec.

## More Features
  RSpec is packed with features, and you can take it as far as you would like. There are lots
  of shortcuts, but this should get you started. If you ever find yourself repeating code in a test,
  go look up the best way to handle that, becuase there will be a way.
