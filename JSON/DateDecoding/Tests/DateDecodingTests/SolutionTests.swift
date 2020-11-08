import Foundation
import XCTest
@testable import DateDecoding

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_dateDecodingStrategy", test_dateDecodingStrategy),
        ("test_computedProperty", test_computedProperty)
    ]

    func test_dateDecodingStrategy() {
        runTest(decode_dateDecodingStrategy)
    }

    func test_computedProperty() {
        runTest(decode_computedProperty)
    }

}
