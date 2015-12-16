# Methods

To quote *Why's Poignant Guide to Ruby*:

> If variables and constants are the nouns, then methods are the verbs.

Methods are exactly like verbs: they tell the class that they are a in to do something.

Don't forget to read the RDoc on them!

## Anatomy of a Method

Here is an example of a simple `paint` method in the `Door` class:

    class Door
      attr_reader :color
      # Previous code ...

      def paint(color)
        @color = color
      end

      # More code ...
    end

In order to create a method, start with `def`, followed by the name of the method. After writing your code under this line (and indented), close the method with `end`.

## Calling Methods

After initializing your class and setting it to a variable, all methods within said class are available to be performed on that variable.

Below is an example of a common way of calling methods:

    front_door = Door.new

    # Here are two different ways of calling methods. Keep in mind that both are valid.
    # option 1
    front_door.paint('red')
    # option 2
    front_door.paint 'red'

Note that for option 1, parentheses are required immediately after the name of the method, while in option 2, a space after the method name is all that's needed. While both are valid, keep in mind the readability of your code and which variables belong to which method.

## Arguments

### Default Arguments

Sometimes, methods will call for multiple arguments. These emthods can have default values set for them if no argument is passed in when the method is called.

Below is the same example as before, but the `paint` method now has a second argument with a default value:

    class Door
      attr_reader :color, :dry_time
      # Previous code ...

      def paint(color, dry_time=30)
        @color = color
        @dry_time = dry_time
      end

      # More code ...
    end

When we call `paint` now, we can pass in our own `dry_time` value, or leave it blank.

    front_door = Door.new

    # with dry_time value
    front_door.paint('red', 45)
    front_dor.paint 'red', 45

    # wihtout dry_time value
    front_door.paint('red')
    front_door.paint 'red'


### Variable Arguments

When writing methods, a set number of arguments is not always necessary. Using `*` in front of the name of your variable will tell the method that any number of arguments may be passed in.

Below is another Home-Depot-related example, where we pass in the `materials` used to create a `House`:

    class House
      attr_reader :materials
      # Previous code ...

      def materials(*materials)
        @materials = []
        @materials << materials
        @materials
      end

      # More code ...
    end

    # Calling the method
    House.materials('wood', 'brick', 'cement')

    # Number of aruments is irrelevant; they will all be processed
    House.materials('wood')

## Return

Returns in methods are quite simple: if `return` is not explicity used in the method, then the last argument or boolean value will be returned.

Here is an example:

    class House
      # Previous code ...

      # Calling the window method will return the last value, which in this case is :picture_window ...
      def windows
        :slider_window
        :picture_window
      end

      # ... whereas calling the drapes method will return :cirmson_red due to the use of return
      def drapes
        return :crison_red
        :blood_orange
      end

      # More code ...
    end

## Private Methods

Sometimes methods are only required for in-Class operations, and their results should not be made available to the end user. This is what private methods do: they make certain methods only accessible from within the class.

Methods can be made private in two different ways. The first way is to declare the variable and then use the `private` keyword in conjunction with the name of the method.

Here is an example:

    class House
      # Previous code ...

      def contractor
        team = :hire_workers
        team
      end

      # Option 1: place the word 'private' before your methods that you want private
      private

      def hire_workers
        workers = []
        workes << 'Ryan'
        workers << 'Miguel'
        workers << 'Scott'
        workers << 'Derek'
        workers
      end

      # option 2: after your method, use 'private' plus the name of your method
      private :hire_workers

      # More code ...
    end

    # In both instances, the contractor method can be called, but not the hire_workers method
    House.contractor       <- will return array of workers
    House.hire_workers     <- raise Error
