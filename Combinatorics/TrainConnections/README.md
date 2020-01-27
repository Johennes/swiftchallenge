Train Connections
=================

Difficulty: hard

Problem Statement
-----------------

Consider a type `Route` describing a train route from an origin location to a
destination location with an associated departure and arrival date and time.

``` {.swift}
struct Route: Equatable, Hashable, CustomStringConvertible {
    let origin: String
    let destination: String
    let departure: Date
    let arrival: Date

    var description: String {
        return "🚂 \(origin) → \(destination)"
    }
}
```

Implement a method that, given an array of such train routes, computes all
possible connections. A connection is a non-empty array of `Route` objects where
adjacent elements are joined on their origin and destination with the condition
that the succeeding route's departure time must be greater than the preceding
route's arrival time.

``` {.swift}
func makeConnections(from routes: [Route]) -> [[Route]] {
    // ?
}
```

Note that if multiple routes combine to a connection, each subrange forms a
valid connection as well. The order of connections in the resulting array can be
arbitrary.

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the test method in
[ChallengeTests.swift] and hit `CMD + U`.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/TrainConnections/Challenge.swift
  [ChallengeTests.swift]: Tests/TrainConnectionsTests/ChallengeTests.swift
  [Solutions.swift]: Sources/TrainConnections/Solutions.swift
