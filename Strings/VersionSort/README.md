Version Sort
============

Difficulty: medium

Problem Statement
-----------------

You are given a set of version number strings adhering to the regular expression
`^v?\d+(?:\.\d+)*(?:[_-]?[a-zA-Z]*\d*)?$`. Write a function that compares two
such strings, returning their ordering as a value of type `ComparisonResult`.

The algorithm should ignore the optional `v` prefix meaning that `v1.1` and
`1.1` are considered to be the same version number. The same should apply to
trailing `.0` components, so that `2.0.0` and `2` are identified as being equal.

``` {.swift}
func compareVersions(
    _ version1: String,
    _ version2: String) -> ComparisonResult
{
    // ?
}

compareVersions("1.0.1", "1.1.0") // .orderedAscending)
compareVersions("1.9", "1.10") // .orderedAscending)
compareVersions("3.0", "2.1.8") // .orderedDescending)
compareVersions("4.7-alpha11", "4.7-alpha2") // .orderedDescending)
compareVersions("v2.22", "2.22") // .orderedSame)
compareVersions("2", "2.0.0")) // .orderedSame)
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeleton.

To run unit tests that validate your code, uncomment the body of the test method
in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can run the
tests by executing `swift test` in the package directory.

To view selected solutions open [Solutions.swift].

  [Challenge.swift]: Sources/VersionSort/Challenge.swift
  [ChallengeTests.swift]: Tests/VersionSortTests/ChallengeTests.swift
  [Solutions.swift]: Sources/VersionSort/Solutions.swift
