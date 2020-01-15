import Foundation
import XCTest
@testable import Reverse

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(isReverse)
//    }

}

func runTest(_ method: (String, String) -> Bool) {
    XCTAssertTrue(method("", ""))
    XCTAssertFalse(method("god", ""))
    XCTAssertFalse(method("", "dog"))
    XCTAssertTrue(method("god", "dog"))
    XCTAssertFalse(method("god", "fog"))
    XCTAssertFalse(method("god", "doug"))
    XCTAssertFalse(method("good", "dog"))
}
