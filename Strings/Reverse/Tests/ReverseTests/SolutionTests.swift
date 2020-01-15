import Foundation
import XCTest
@testable import Reverse

final class SolutionTests: XCTestCase {

    func test_oneLine() {
        runTest(isReverse_oneLine)
    }

    func test_iterating() {
        runTest(isReverse_iterating)
    }

}
