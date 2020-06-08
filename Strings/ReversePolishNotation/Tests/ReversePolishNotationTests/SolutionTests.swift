import Foundation
import XCTest
@testable import ReversePolishNotation

final class SolutionTests: XCTestCase {

    func test_stack() throws {
        try runTest(evaluate_stack)
    }

    func test_recursive() throws {
        try runTest(evaluate_recursive)
    }

}
