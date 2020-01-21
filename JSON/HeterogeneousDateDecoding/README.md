Heterogeneous Date Decoding
===========================

Difficulty: medium

Problem Statement
-----------------

You are dealing with a JSON response from a legacy API. Unfortunately, various
people have worked on the API over the years which has resulted in a quite
heterogeneous structure. Among others, there are different formats for
timestamps in the responses. Below is an example of a JSON response encoding a
time interval of 60 seconds.

``` {.json}
{
    "date1": 459125100
    "date2": 459125160000
}
```

Here `date1` is a timestamp in second-based [Epoch time] while `date2` is a
timestamp in millisecond-based [Epoch time]

Your task is to decode such an object into an instance of a type that conforms
to the protocol

``` {.swift}
protocol P {
    var date1: Date { get }
    var date2: Date { get }
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

To run unit tests that validate your code, uncomment the test method in
[ChallengeTests.swift] and hit `CMD + U`.

To view selected solutions open [Solutions.swift].

  [Epoch time]: https://en.wikipedia.org/wiki/Unix_time
  [Challenge.swift]: Sources/HeterogeneousDateDecoding/Challenge.swift
  [ChallengeTests.swift]: Tests/HeterogeneousDateDecodingTests/ChallengeTests.swift
  [Solutions.swift]: Sources/HeterogeneousDateDecoding/Solutions.swift
