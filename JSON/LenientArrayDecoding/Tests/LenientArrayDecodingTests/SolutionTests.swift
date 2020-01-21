import Foundation
import XCTest
@testable import LenientArrayDecoding

final class SolutionTests: XCTestCase {

    func test_container() {
        runTest(lenientDecode_container)
    }

}
