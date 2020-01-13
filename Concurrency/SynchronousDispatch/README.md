Synchronous Dispatch
====================

Difficulty: medium

Problem Statement
-----------------

What is the result of running the following function for different arguments?

``` {.swift}
func challenge(_ i: Int) -> Int {
    let queue = DispatchQueue(label: "Concurrency FTW!")
    var result = i
    queue.async { result = result * 2 }
    queue.sync { result = result + 3 }
    return result
}
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the test method in
[ChallengeTests.swift] and hit `CMD + U`.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/SynchronousDispatch/Challenge.swift
  [ChallengeTests.swift]: Tests/SynchronousDispatchTests/ChallengeTests.swift
  [Solutions.swift]: Sources/SynchronousDispatch/Solutions.swift
