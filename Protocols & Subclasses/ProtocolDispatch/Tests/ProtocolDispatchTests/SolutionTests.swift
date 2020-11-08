import Foundation
import XCTest
@testable import ProtocolDispatch

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test1_constant", test1_constant),
        ("test2_constant", test2_constant),
        ("test3_constant", test3_constant),
        ("test4_constant", test4_constant),
        ("test5_constant", test5_constant),
        ("test6_constant", test6_constant),
        ("test7_constant", test7_constant)
    ]

    func test1_constant() {
        runTest(solution1_constant, challenge1)
    }

    func test2_constant() {
        runTest(solution2_constant, challenge2)
    }

    func test3_constant() {
        runTest(solution3_constant, challenge3)
    }

    func test4_constant() {
        runTest(solution4_constant, challenge4)
    }

    func test5_constant() {
        runTest(solution5_constant, challenge5)
    }

    func test6_constant() {
        runTest(solution6_constant, challenge6)
    }

    func test7_constant() {
        runTest(solution7_constant, challenge7)
    }

}
