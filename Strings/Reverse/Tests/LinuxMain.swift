import XCTest
@testable import ReverseTests

XCTMain([
    testCase(ChallengeTests.allTests),
    testCase(SolutionTests.allTests)
])
