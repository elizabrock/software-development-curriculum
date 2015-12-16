# Open-Classes

In Ruby, classes are never closed: you can always add methods to an existing class. This applies to the classes you write as well as the standard, built-in classes. All you have to do is open up a class definition for an existing class, and the new contents you specify will be added to whatever's there.

If you're writing a new method that conceptually belongs in the original class, you can reopen the class and append your method to the class definition. You should only do this if your method is generally useful, and you're sure it won't conflict with a method defined by some library you include in the future. If your method isn't generally useful, or you don't want to take the risk of modifying a class after its initial creation, create a subclass of the original class. The subclass can override its parent's methods, or add new ones. This is safer because the original class, and any code that depended on it, is unaffected.

## Sources and Further Reading

* [RubyLearning](http://rubylearning.com/satishtalim/ruby_open_classes.html)
