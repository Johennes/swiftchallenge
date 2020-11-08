import Foundation
import XCTest
@testable import Reverse

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_oneLine", test_oneLine),
        ("test_iterating", test_iterating)
    ]

    func test_oneLine() {
        runTest(isReverse_oneLine)
    }

    func test_iterating() {
        runTest(isReverse_iterating)
    }

}
