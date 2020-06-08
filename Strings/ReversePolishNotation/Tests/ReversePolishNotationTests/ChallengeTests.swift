import Foundation
import XCTest
@testable import ReversePolishNotation

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(solution)
//    }

}

func runTest(_ method: (String) throws -> Int) rethrows {
    // Error test cases
    XCTAssertThrowsError(try method(""))
    XCTAssertThrowsError(try method("+"))
    XCTAssertThrowsError(try method("+ 1"))
    XCTAssertThrowsError(try method("1 +"))
    XCTAssertThrowsError(try method("1 2"))
    XCTAssertThrowsError(try method("+ +"))
    XCTAssertThrowsError(try method("1 2 + +"))
    XCTAssertThrowsError(try method("1 2 + 3"))
    XCTAssertThrowsError(try method("1 2 &"))
    XCTAssertThrowsError(try method("+ + +"))
    XCTAssertThrowsError(try method("+ 1 2"))
    XCTAssertThrowsError(try method("1 + 2"))
    XCTAssertThrowsError(try method("foobar"))

    // No / single operation test cases
    XCTAssertEqual(1, try method("1"))
    XCTAssertEqual(3, try method("1 2 +"))
    XCTAssertEqual(1, try method("2 1 -"))
    XCTAssertEqual(6, try method("2 3 *"))

    // Composite operation test cases
    XCTAssertEqual(6, try method("1 2 + 3 +"))
    XCTAssertEqual(0, try method("1 2 3 - +"))
    XCTAssertEqual(1, try method("1 2 - 3 4 - *"))
    XCTAssertEqual(-27, try method("1 2 3 * + 4 5 6 * + -"))

    // Whitespace test cases
    XCTAssertEqual(3, try method("1  2  +"))
    XCTAssertEqual(3, try method(" 1 2 +"))
    XCTAssertEqual(3, try method("1 2 + "))
    XCTAssertEqual(3, try method("1\t2\t+"))
    XCTAssertEqual(3, try method("1 2 +\n"))
}
