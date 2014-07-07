# Truth Tables

Truth tables are logical tables that are drawn in order to help understand or visualize a logical statement.  Examples of simple truth tables can be found in the article on Logic.

A truth table starts with the variables in the logical statement (often x, y and z, or P and Q) and their possible values. For example, if we have a boolean logic statement with variables A and B, we start by thinking about the possible values of A and B:

  A could be: 0, or 1

  B could be: 0, or 1

And then start writing our table with every possible combination of the A values and the B values

	| A | B |
	| 0 | 0 |
	| 0 | 1 |
	| 1 | 0 |
	| 0 | 1 |

From there, we add to the right side of the table with the results of evaluating the logical statement for the given values of A and B

For example, if the statement we're writing a truth table for was `A && B`:

	| A | B | A && B |
	| 0 | 0 | 0      |
	| 0 | 1 | 0      |
	| 1 | 0 | 0      |
	| 1 | 1 | 1      |

If we are working on a more complex statement, we will often add additional columns to help us build up the final answer.

For example, for `!P && (P || Q)`:

	| P | Q | !P | P || Q | !P && (P || Q) |
	| 0 | 0 | 1  | 0      | 0              |
	| 0 | 1 | 1  | 1      | 1              |
	| 1 | 0 | 0  | 1      | 0              |
	| 1 | 1 | 0  | 1      | 0              |


I will often use a truth table of a complex statement (like the above example of `!P && (P || Q)`) to help me think of an equivalent, shorter, way of expressing the same logic.

I start with the table (as above) but remove the label on the final statement:

	| P | Q | ?? |
	| 0 | 0 | 0  |
	| 0 | 1 | 1  |
	| 1 | 0 | 0  |
	| 1 | 1 | 0  |

Then, I study it and try to think of another statement that would have the same results.

My first thought was: `!Q && P`.  So, I'll try that out first.

	| P | Q | !Q | !Q && P |
	| 0 | 0 | 1  | 0       |
	| 0 | 1 | 0  | 0       |
	| 1 | 0 | 1  | 1       |
	| 1 | 1 | 0  | 0       |

Obviously, that wasn't quite it.  I'll try again with `Q && !P`.

	| P | Q | !P | Q && !P |
	| 0 | 0 | 1  | 0       |
	| 0 | 1 | 1  | 1       |
	| 1 | 0 | 0  | 0       |
	| 1 | 1 | 0  | 0       |

Winner, winner! Chicken dinner!

Through the power of truth tables and the sheer dumb luck of guessing,  I've discovered that:

	Q && !P == !P && (P || Q)

Which could also be stated (via. the commutativity principle) as:

	!P && Q == !P && (P || Q)

Neat!

( I could also have used various logic transformations to achieve a similar result).

## Further Reading

* [Bruce Ikenaga's Truth Tables, Tautologies, and Logical Equivalence](http://www.millersville.edu/~bikenaga/math-proof/truth-tables/truth-tables.html)
* [Wikipedia: Truth Tables](http://en.wikipedia.org/wiki/Truth_table)
