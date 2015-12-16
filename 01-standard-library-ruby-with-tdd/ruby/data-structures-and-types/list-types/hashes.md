# Hashes

## What is a hash?

Hashes are equivalent to JavaScript objects and allow us to store information as key-value pair.
Any object type can be used for both the key & value, however, symbols are the preferred data type for keys.

## Creating an empty Hash

You can create a new, empty hash in 2 ways:

    hash = Hash.new
    hash = {}

Hash Table (empty):

|  Key  | Value |
|:-----:|:-----:|
|       |       |
|       |       |
|       |       |

## Adding keys & values to an empty Hash

You can add a key-value pair one at a time:

    hash = {}
    hash[:one]   = "uno"
    hash[:two]   = "dos"
    hash[:three] = "tres"

You can also add multiple at one time:

    hash = {:one => "uno", :two => "dos", :three => "tres"}

Hash Table:

|  Key  | Value |
|:-----:|:-----:|
|:one   |"uno"  |
|:two   |"dos"  |
|:three |"tres" |

Values can be changed after added:

    hash[:one] = '1'
    hash = {:one => "1", :two => "dos", :three => "tres"}

Hash Table (after change):

|  Key  | Value |
|:-----:|:-----:|
|:one   |"1"    |
|:two   |"dos"  |
|:three |"tres" |

## Creating a Hash with a default value

Hashes have a default value that is returned when accessing keys that do not exist in the hash. If no default is set nil is used.
The default can be set by sending it as an argument when creating a new hash. You can either send in the value directly, or send in a block to be executed any time you attempt to access a key that is not present.

    hash = Hash.new("default_value")
    hash = Hash.new {|hash, key| hash[key] = "default_value" }

Now, you can continue calling keys that have been assigned and get their value, but if you call a key that has not been assigned,
you will get the default:

    hash[:one]   => "uno"
    hash[:five]  => "default_value"

## Accessing the values stored in a Hash

There are 2 ways to access the stored info:

1. The first option is to user "fetch". This option is less preferable because if you call a key that does not exist, it will raise a KeyError.

        hash.fetch(:one)   => "uno"
        hash.fetch(:four)  => KeyError

2. The second, and more widely used option, is accessing the information using the key wrapped in brackets. By using this method, no error will be raised, it will just return nil.

        hash[:one]    => "uno"
        hash[:four]   => nil

## Iterating through a Hash

If you need to access each variable in the hash, you can loop over them using the each loop.

    hash.each do |key, value|
      puts key + " - " + value
    end

This would output:

    :one - "uno",
    :two - "dos",
    :three - "tres"

## Accessing all keys/values

To retrieve all the keys in a Hash:

    hash.keys    => [:one, :two, :three]

To retrieve all the values in a Hash:

    hash.values  => ["uno", "dos", "tres"]

To retrieve both:

    hash.to_a    => [[:one, "uno"], [:two, "dos"], [:three, "tres"]]

## Merging Hashes

The merge method takes two hashes and merges their contents together, making a new hash (to merge values without creating a third hash, use **merge!**).
If the same key is used in both hashes, the value from the second hash will be kept.

    h1 = {:a => "ant", :b => "boy"}
    h2 = {:b => "ball", :c => "cat"}

    h1.merge(h2)  =>  {a: => "ant", :b => "ball", :c => "cat"}

## Additional Methods used on a Hash

> clear

Removes all key-value pairs from the hash.

    hash = {:one => "uno", :two => "dos", :three => "tres"}
    hash.clear  => {}

> default

Returns the default value. The value is nil if not assigned.

    hash.new      => {}
    hash.default  => nil

    hash.new("boy")  => {}
    hash.default     => "boy"

> delete

Deletes the key-value pair specified and returns the value from the pair.

    hash = {:one => "uno", :two => "dos", :three => "tres"}
    hash.delete(:a)   => "uno"

> has_key? / has_value?

Returns true if the given key or value is in the hash.

    hash = {:one => "uno", :two => "dos", :three => "tres"}
    hash.has_key?(:two)     => true
    hash.has_key?(:ten)     => false

    hash.has_value?("dos")  => true
    hash.has_value?("ocho") => false

> length

Returns the number of key-value pairs in the hash

    hash = {:one => "uno", :two => "dos", :three => "tres"}
    hash.length   => 3

> shift

Removes a key-value pair from the hash and returns it as an array.

    hash = {:one => "uno", :two => "dos", :three => "tres"}
    hash.shift   => [:one, "uno"]


## Sources

* [Ruby 2.1.2 Documentation](http://www.ruby-doc.org/core-2.1.2/Hash.html)
* [TutorialsPoint](http://www.tutorialspoint.com/ruby/ruby_hashes.htm)
* [About.com Pages for Hashes](http://ruby.about.com/od/rubysbasicfeatures/ss/Everything-You-Wanted-To-Know-About-Hashes.htm)
