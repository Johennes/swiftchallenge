Protocol Dispatch
=================

Difficulty: medium

Problem Statement
-----------------

Consider the following type hierarchy

``` {.swift}
protocol P {
    func a() -> String
}

extension P {
    func a() -> String { return "P.a" }
    func b() -> String { return "P.b" }
}

struct S: P {
    func a() -> String { return "S.a" }
    func b() -> String { return "S.b" }
}

class C: P {
    init() {}
    func a() -> String { return "C.a" }
    func b() -> String { return "C.b" }
}
```

What is the result of running the following functions?

``` {.swift}
func challenge1() -> (a: String, b: String) {
    let obj = S()
    return (a: obj.a(), b: obj.b())
}

func challenge2() -> (a: String, b: String) {
    let obj = C()
    return (a: obj.a(), b: obj.b())
}

func challenge3() -> (a: String, b: String) {
    let obj: P = S()
    return (a: obj.a(), b: obj.b())
}

func challenge4() -> (a: String, b: String) {
    let obj: P = C()
    return (a: obj.a(), b: obj.b())
}

func challenge5() -> (a: String, b: String) {
    func challenge<T: P>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(S())
}

func challenge6() -> (a: String, b: String) {
    func challenge<T: P>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(C())
}

func challenge7() -> (a: String, b: String) {
    func challenge<T: C>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(C())
}
```

For each `challengeX` function write a `solutionX` function returning the result
you expect.

``` {.swift}
func solution1() -> (a: String, b: String) {
    // ?
}

solution1().a == challenge1().a // true
solution1().b == challenge1().b // true
```

Further Instructions
--------------------

To start working on this challenge open [Challenge.swift] and uncomment the code
skeletons.

To run unit tests that validate your code, uncomment the body of the test
methods in [ChallengeTests.swift] and hit `CMD + U` in Xcode. On Linux you can
run the tests by executing `swift test` in the package directory.

To view the solutions open [Solutions.swift].

  [Challenge.swift]: Sources/ProtocolDispatch/Challenge.swift
  [ChallengeTests.swift]: Tests/ProtocolDispatchTests/ChallengeTests.swift
  [Solutions.swift]: Sources/ProtocolDispatch/Solutions.swift
