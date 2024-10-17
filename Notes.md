# Haskell Notes

Loading into GHCI => :load <filename>.hs or :l <filename>.hs

The difference between Haskell's if statement and if statements in imperative languages is that the else part is mandatory in Haskell.
In imperative languages you can just skip a couple of steps if the condition isn't satisfied but in Haskell every expression and function must return something.
We could have also written that if statement in one line but I find this way more readable.
Another thing about the if statement in Haskell is that it is an expression.
An expression is basically a piece of code that returns a value. 5 is an expression because it returns 5, 4 + 8 is an expression, x + y is an expression because it returns the sum of x and y.
Because the else is mandatory, an if statement will always return something and that's why it's an expression.

doubleSmallNumber' x = (if x > 100 then x else x\*2) + 1
Had we omitted the parentheses, it would have added one only if x wasn't greater than 100.
Note the ' at the end of the function name.
That apostrophe doesn't have any special meaning in Haskell's syntax.
It's a valid character to use in a function name.
We usually use ' to either denote a strict version of a function (one that isn't lazy) or a slightly modified version of a function or a variable.
Because ' is a valid character in functions, we can make a function like this.

conanO'Brien = "It's a-me, Conan O'Brien!"
There are two noteworthy things here.

1. In the function name we didn't capitalize Conan's name. That's because functions can't begin with uppercase letters.
2. This function doesn't take any parameters. When a function doesn't take any parameters, we usually say it's a definition (or a name). Because we can't change what names (and functions) mean once we've defined them, conanO'Brien and the string "It's a-me, Conan O'Brien!" can be used interchangeably.
