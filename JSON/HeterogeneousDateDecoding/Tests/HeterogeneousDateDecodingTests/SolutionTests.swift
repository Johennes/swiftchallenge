import Foundation
import XCTest
@testable import HeterogeneousDateDecoding

final class SolutionTests: XCTestCase {

    func test_custom() {
        runTest(decode_custom)
    }

}
