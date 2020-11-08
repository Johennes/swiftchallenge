import Foundation
import XCTest
@testable import Anagram

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_oneLine", test_oneLine),
        ("test_counting", test_counting)
    ]

    func test_oneLine() {
        runTest(isAnagram_oneLine)
    }

    func test_counting() {
        runTest(isAnagram_counting)
    }

}
