Reverse Polish Notation
=======================

Difficulty: medium

Problem Statement
-----------------

Reverse Polish notation (or RPN) is a postfix notation for mathematical
expressions in which operators appear *after* their operands. More precisely,
the operators appear immediately after their second operand. For example the
expression `1 + 1` is written as `1 1 +` in RPN and `1 - 2 + 3` becomes
`1 2 - 3 +`.

Implement a method that given a string holding an RPN expression computes its
result.

``` {.swift}
func evaluate(_ rpnString: String) throws -> Int {
    // ?
}
```

You can assume the string to only contain whitespace, integer numbers and the
operators `+`, `-` and `*`. If the string does not constitute a valid RPN
expression an error should be thrown.

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/ReversePolishNotation/Challenge.swift
  [ChallengeTests.swift]: Tests/ReversePolishNotationTests/ChallengeTests.swift
  [Solutions.swift]: Sources/ReversePolishNotation/Solutions.swift
