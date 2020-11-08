Date Decoding
=============

Difficulty: easy

Problem Statement
-----------------

You are given a JSON object with a single property `date` containing a timestamp
in [Epoch time].

``` {.json}
{
    "date": 459125100
}
```

Your task is to decode such an object into an instance of a type that conforms
to the protocol

``` {.swift}
protocol P {
    var date: Date { get }
}
```

The particular type you use is entirely arbitrary as long as it conforms to `P`.

Write a method that takes a `Data` instance representing a JSON object of the
aforementioned format and decodes it into an instance conforming to `P`.

``` {.swift}
func decode(_ json: Data) throws -> P {
    // ?    
}
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Epoch time]: https://en.wikipedia.org/wiki/Unix_time
  [Challenge.swift]: Sources/DateDecoding/Challenge.swift
  [ChallengeTests.swift]: Tests/DateDecodingTests/ChallengeTests.swift
  [Solutions.swift]: Sources/DateDecoding/Solutions.swift
