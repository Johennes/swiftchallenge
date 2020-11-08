import Foundation
import XCTest
@testable import ReversePolishNotation

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_stack", test_stack),
        ("test_recursive", test_recursive)
    ]

    func test_stack() throws {
        try runTest(evaluate_stack)
    }

    func test_recursive() throws {
        try runTest(evaluate_recursive)
    }

}
