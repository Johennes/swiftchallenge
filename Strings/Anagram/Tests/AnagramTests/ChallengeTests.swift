import Foundation
import XCTest
@testable import Anagram

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(isAnagram)
//    }

}

func runTest(_ method: (String, String) -> Bool) {
    XCTAssertTrue(method("", ""))
    XCTAssertFalse(method("fired", ""))
    XCTAssertFalse(method("", "fried"))
    XCTAssertTrue(method("fired", "fried"))
    XCTAssertFalse(method("fired", "freed"))
    XCTAssertFalse(method("fired", "friend"))
    XCTAssertFalse(method("friend", "fired"))
}
