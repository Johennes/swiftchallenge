import Foundation
import XCTest
@testable import TrainConnections

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_recursive", test_recursive)
    ]

    func test_recursive() {
        runTest(makeConnections_recursive)
    }

}
