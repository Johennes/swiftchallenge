import Foundation
import XCTest
@testable import SynchronousDispatch

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_function", test_function),
        ("test_synchronous", test_synchronous)
    ]

    func test_function() {
        runTest(solution_function)
    }

    func test_synchronous() {
        runTest(solution_synchronous)
    }

}
