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

Write a function `solution` that produces the same result for arbitrary input
without using asynchronous blocks.

``` {.swift}
func solution(_ i: Int) -> Int {
    // ?
}

solution(0) == challenge(0) // true
solution(1) == challenge(1) // true
solution(2) == challenge(2) // true
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/SynchronousDispatch/Challenge.swift
  [ChallengeTests.swift]: Tests/SynchronousDispatchTests/ChallengeTests.swift
  [Solutions.swift]: Sources/SynchronousDispatch/Solutions.swift
