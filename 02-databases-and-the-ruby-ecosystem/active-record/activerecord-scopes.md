# Active Record Scopes
- Scopes allow us to define an active relation query, and store it in our model
- Defined using ActiveRelation query methods
- Can be called like ActiveRelation methods
- Can accept parameters
- Rails 4 requires lambda syntax

## Why does Rails 4 require lambda syntax?
Lambdas are evaluated when they are called and not when they are defined. If Time.now was called and a lambada was not used it would give you the time from when Time.now was defined and never change after that. Whereas when a lambda is called with Time.now it would use the time at which the lambda was called which is when Time.now gets defined.

## Scope examples

Each one of these functions, when called, will search the database for models where the active attribute is equal to true.

    Lambda example:
    scope :active, lambda { where(:active => true) }

    Stabby example:
    scope :active, -> { where(:active => true) }

    Class method:
    def self.active
      where(:active => true)
    end

Scope example taking parameters:

    scope :search, lambda { |query|
      where(["name LIKE ?", "%#{query}%" ])
    }

To call the "search" scope assuming this scope is written in a User model you would use something like this:

    User.search("Jimmy")

## Further Reading

* http://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html
* http://blog.plataformatec.com.br/2013/02/active-record-scopes-vs-class-methods/

## Source

* http://www.lynda.com/Ruby-Rails-tutorials/Named-scopes/139989/159102-4.html
