import XCTest
@testable import ProtocolDispatchTests

XCTMain([
    testCase(ChallengeTests.allTests),
    testCase(SolutionTests.allTests)
])
