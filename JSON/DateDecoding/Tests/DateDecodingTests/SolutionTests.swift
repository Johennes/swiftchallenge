import Foundation
import XCTest
@testable import DateDecoding

final class SolutionTests: XCTestCase {

    func test_dateDecodingStrategy() {
        runTest(decode_dateDecodingStrategy)
    }

    func test_computedProperty() {
        runTest(decode_computedProperty)
    }

}
