import XCTest
@testable import SynchronousDispatch

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(solution)
//    }

}

func runTest(_ method: (Int) -> Int) {
    XCTAssertEqual(method(-5), challenge(-5))
    XCTAssertEqual(method(-4), challenge(-4))
    XCTAssertEqual(method(-3), challenge(-3))
    XCTAssertEqual(method(-2), challenge(-2))
    XCTAssertEqual(method(-1), challenge(-1))
    XCTAssertEqual(method(0), challenge(0))
    XCTAssertEqual(method(1), challenge(1))
    XCTAssertEqual(method(2), challenge(2))
    XCTAssertEqual(method(3), challenge(3))
    XCTAssertEqual(method(4), challenge(4))
    XCTAssertEqual(method(5), challenge(5))
}
