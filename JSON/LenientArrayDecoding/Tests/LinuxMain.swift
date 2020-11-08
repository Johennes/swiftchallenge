import XCTest
@testable import LenientArrayDecodingTests

XCTMain([
    testCase(ChallengeTests.allTests),
    testCase(SolutionTests.allTests)
])
