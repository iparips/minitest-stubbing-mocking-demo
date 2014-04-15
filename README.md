String Calculator
=================

The following is a TDD Kata an exercise in coding, refactoring and test-first.

## Before you start

- Try not to read ahead.
- Do one task at a time. The trick is to learn to work incrementally.
- Make sure you only test for correct inputs. There is no need to test for invalid inputs for this kata

## Task

Create a String calculator with a method add(string numbers)

- Given a an empty string add method should return 0
    - Eg: calc.add('') should return 0

- Given a string containg one integer add method should return that integer.
    - Eg: calc.add('1') should return 1

- Given a string with two comma separated integers add method should return a sum of those integers
    - Eg: calc.add('1,2') should return 3

- Remember to refactor after each passing test

- Allow the add method to handle an unknown amount of numbers
    - Eg: calc.add('1,2,3,4,5') should return 15

- Allow the add method to handle new lines between numbers (instead of commas).
  - Eg: calc.add(“1\n2,3”) should return 6
  - the following input is NOT ok:  “1,\n” (not need to prove it - just clarifying)

- Support different delimiters: to change a delimiter, the beginning of the string will contain a separate line that looks like this:   “//[delimiter]\n[numbers…]”
  - Eg: calc.add("//;\n1;2") should return 3
  - the first line is optional. all existing scenarios should still be supported

- Calling add with a negative number will throw an exception with message in the format of “negatives not allowed: [replace supplied negative number here]”
    - if there are multiple negatives, show all of them in the exception message
    - Eg: calc.add('1,-2,-3') should result in an exception with a message of "negatives not allowed: -2,-3"

- Stop here if you are a beginner. Continue if you can finish the steps so far in less than 30 minutes.

- Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2
    - Eg: calc.add('2, 1001') should return 2

- Delimiters can be of any length with the following format:  “//[delimiter]\n”
    - Eg: calc.add(“//[***]\n1***2***3”) should return 6

- Allow multiple delimiters in format: “//[delim1][delim2]\n”
    - Eg: calc.add("//[*][%]\n1*2%3") should return 6.

- Make sure you can also handle multiple delimiters with length longer than one char

## Task Part 2: Behaviour Verification Testing
-

## References

- Minitest Quick References: http://mattsears.com/articles/2011/12/10/minitest-quick-reference
- Git Commands References: https://gist.github.com/iparips/9923839
- Refactoring: http://c2.com/cgi/wiki?WhatIsRefactoring
- Pair Programming: http://www.extremeprogramming.org/rules/pair.html

## Credits

- Problem Description was inspired by Roy Osherove's string calculator kata: http://osherove.com/tdd-kata-1/
