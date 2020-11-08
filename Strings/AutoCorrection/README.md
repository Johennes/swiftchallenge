Auto Correction
===============

Difficulty: medium

Problem Statement
-----------------

You are working on a text autocorrection engine. As part of the project you have
to devise an algorithm to evaluate correction candidates against a user entered
string. Luckily for you the product requirements are fairly simplistic. A string
is deemed a valid autocorrection if its edit difference to the input string is
exactly one. That means replacing, inserting or removing exactly one character
in the input string yields the correction string.

Using these requirements, implement a method `canAutocorrect` that takes an
input string and a correction candidate and returns `true` if and only if the
candidate is a valid autocorrection of the input.

``` {.swift}
func canAutocorrect(input: String, correction: String) -> Bool {
    // ?
}

canAutocorrect(input: "Appl", correction: "Apple") // true
canAutocorrect(input: "App", correction: "Apple") // false
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/AutoCorrection/Challenge.swift
  [ChallengeTests.swift]: Tests/AutoCorrectionTests/ChallengeTests.swift
  [Solutions.swift]: Sources/AutoCorrection/Solutions.swift
