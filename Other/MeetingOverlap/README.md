Meeting Overlap
===============

Difficulty: medium

Problem Statement
-----------------

The room reservation system in the office has gone bonkers and your boss has
tasked you with implementing an algorithm that given a number of meeting
requests determines how many rooms are needed to host all of them.

Meetings are characterized by a start date / time and a duration as represented
by the following struct.

``` {.swift}
struct Meeting {
    let start: Date
    let duration: TimeInterval
}
```

Be quick about it and implement a `numberOfMeetingRooms` function or else
productivity in the office might soar in the absence of meetings.

``` {.swift}
func numberOfMeetingRooms(for meetings: [Meeting]) -> Int {
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

  [Challenge.swift]: Sources/MeetingOverlap/Challenge.swift
  [ChallengeTests.swift]: Tests/MeetingOverlapTests/ChallengeTests.swift
  [Solutions.swift]: Sources/MeetingOverlap/Solutions.swift
