# Code Smells

* Manual iteration
* Long lines
* Indentation missing or inconsistent
* Duplicated code
* Similar code used in multiple places
* Magic numbers and magic strings (see magic numbers article)
* Deeply nested loops
* Short/Misleading variable names (e.g. `x`)
* Unnecessary use of abbreviations (e.g. `yr` in place of `year`)
* Unclear method names (e.g. `def do_the_things`)
* Too many/redundant variables
* Not human-friendly/readable
* While/For/Until loops used where they aren't necessary
* Missing or misplaced validations
* Long methods (10+ lines)
* Commented out code

## Solutions:

* Pull out magic numbers and strings as constants or local variables
* Simplify or remove redundant variables
* Don't copy-paste code to avoid duplication
* Extract duplicated code into methods
* Avoid poorly formatted code using a code formatter and a text editor with syntax highlighting
* To fix long methods, use loops strategically, extract methods, and extract constants
* To fix unclear variable names, focus on why the variable exists
* To fix unclear method names, focus on the single task the method accomplishes
* To make your code readable, focus on how the code should tell a story, instead of how it accomplishes a task
* To avoid superfluous functionality, use test-driven development to drive each line of code you add.

### Method Name Examples

* `last?` implies that a boolean is returned
* `last` implies that the last item is returned
* `sort!` implies that the object is mutated (changed in place) or that an exception might be raised
* `sort` doesn't imply mutation or a tendency towards exceptions
* `generates_x`, `to_s` <u>should not</u> puts or print
* `print_month` implies that something will be printed
