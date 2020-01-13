import XCTest
@testable import Anagram

final class SolutionTests: XCTestCase {

    func test_oneLine() {
        runTest(isAnagram_oneLine)
    }

    func test_counting() {
        runTest(isAnagram_counting)
    }

}
