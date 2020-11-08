import Foundation
import XCTest
@testable import MeetingOverlap

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_sortAndCount", test_sortAndCount)
    ]

    func test_sortAndCount() {
        runTest(solution_sortAndCount)
    }

}
