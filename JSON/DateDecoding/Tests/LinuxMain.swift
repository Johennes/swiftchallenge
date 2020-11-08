import XCTest
@testable import DateDecodingTests

XCTMain([
    testCase(ChallengeTests.allTests),
    testCase(SolutionTests.allTests)
])
