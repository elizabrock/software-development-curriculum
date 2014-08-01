# to_str

## Implicit vs. Explicit

to_str is an implicit cast, whereas to_s is an explicit cast. ... If you're having a hard time remembering which is which, I would remember that there is a reason that to_s is shorter. First, it implies that the object isn?t really much of a string, so we?re only using the first letter 's'. Also, to_s is shorter because more objects will have to_s methods, so you?ll end up typing it more frequently. With to_str, we?re tagging an object as much closer to being a string, so we give it the first three letters. It?s almost half of a string!
Quote courtesy of http://whytheluckystiff.net/

## Simple Summary

`to_s` is defined on every object and will always return something.

`to_str` is only defined on objects that are string-like. For example, Symbol has `to_str` but Array does not.

Thus, you can use `obj.respond_to?(:to_str)` instead of something like `obj.is_a?(String)` if you want to take advantage of duck typing without worrying about whether the class you're working with is a subclass of String or not.

The documentation for Exception#to_str reads: "By supplying a to_str method, exceptions are agreeing to be used where Strings are expected." So it's all about expectations.

`to_s`: Give me a String no matter what! `to_str`: I am pretty sure you are String-like. So sure, that I'd prefer to get a NoMethodException in the case where you're not.

## Koans Test Examples

```ruby
class CanNotBeTreatedAsString
    def to_s
      "non-string-like"
    end
  end

  def test_to_s_returns_a_string_representation
    not_like_a_string = CanNotBeTreatedAsString.new
    assert_equal "non-string-like", not_like_a_string.to_s
  end

  def test_normally_objects_cannot_be_used_where_strings_are_expected
    assert_raise(Exception) do
      File.exist?(CanNotBeTreatedAsString.new)
    end
  end
end
```

The first test in koans/about_to_str shows how any object contains a `to_s` method

The second test shows how non-string objects cannot be used where strings are expected

---

```ruby
class CanBeTreatedAsString
    def to_s
      "string-like"
    end

    def to_str
      to_s
    end
  end

  def test_to_str_also_returns_a_string_representation
    like_a_string = CanBeTreatedAsString.new
    assert_equal "string-like", like_a_string.to_str
  end

  def test_to_str_allows_objects_to_be_treated_as_strings
    assert_equal false, File.exist?(CanBeTreatedAsString.new)
  end
```

`to_str` is similar to `to_s` in that it also returns a string like representation

The result not only looks like a string but can be treated as a string.

---

```ruby
  def acts_like_a_string?(string)
    string = string.to_str if string.respond_to?(:to_str)
    string.is_a?(String)
  end

  def test_user_defined_code_can_check_for_to_str
    assert_equal false, acts_like_a_string?(CanNotBeTreatedAsString.new)
    assert_equal true,  acts_like_a_string?(CanBeTreatedAsString.new)
  end
```

`to_str` can be used to test if an object acts like a string.

## References

* https://gist.github.com/kinopyo/5682347
* http://briancarper.net/blog/98/
