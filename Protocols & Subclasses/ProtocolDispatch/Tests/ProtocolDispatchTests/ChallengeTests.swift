import Foundation
import XCTest
@testable import ProtocolDispatch

class ChallengeTests: XCTestCase {

//    func test1() {
//        runTest(solution1, challenge1)
//    }

//    func test2() {
//        runTest(solution2, challenge2)
//    }

//    func test3() {
//        runTest(solution3, challenge3)
//    }

//    func test4() {
//        runTest(solution4, challenge4)
//    }

//    func test5() {
//        runTest(solution5, challenge5)
//    }

//    func test6() {
//        runTest(solution6, challenge6)
//    }

//    func test7() {
//        runTest(solution7, challenge7)
//    }

}

func runTest(
    _ method: () -> (a: String, b: String),
    _ challenge: () -> (a: String, b: String))
{
    XCTAssertEqual(method().a, challenge().a)
    XCTAssertEqual(method().b, challenge().b)
}
