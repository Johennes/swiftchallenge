Lenient Array Decoding
======================

Difficulty: medium

Problem Statement
-----------------

JSON arrays can be heterogeneous meaning that the elements don't need to all be
of the same type.

``` {.json}
["foo", true, 42] // Valid JSON
```

Given the UTF-8 `Data` representation of a JSON array, write a function that
decodes all elements of type `Int` while gracefully ignoring differently typed
elements.

``` {.swift}
func lenientDecode(_ json: Data) throws -> [Int] {
    // ?
}

lenientDecode([1, true, "foo", 2]) == [1, 2] // true
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/LenientArrayDecoding/Challenge.swift
  [ChallengeTests.swift]: Tests/LenientArrayDecodingTests/ChallengeTests.swift
  [Solutions.swift]: Sources/LenientArrayDecoding/Solutions.swift
