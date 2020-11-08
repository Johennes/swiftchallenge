import XCTest
@testable import SynchronousDispatchTests

XCTMain([
    testCase(ChallengeTests.allTests),
    testCase(SolutionTests.allTests)
])
