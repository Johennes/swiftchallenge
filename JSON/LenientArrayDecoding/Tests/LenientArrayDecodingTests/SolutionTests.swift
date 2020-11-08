import Foundation
import XCTest
@testable import LenientArrayDecoding

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_container", test_container)
    ]

    func test_container() {
        runTest(lenientDecode_container)
    }

}
