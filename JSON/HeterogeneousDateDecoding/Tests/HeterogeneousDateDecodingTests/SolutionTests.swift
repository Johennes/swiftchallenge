import Foundation
import XCTest
@testable import HeterogeneousDateDecoding

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_custom", test_custom)
    ]

    func test_custom() {
        runTest(decode_custom)
    }

}
