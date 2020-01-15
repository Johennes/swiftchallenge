import Foundation
import XCTest
@testable import LenientArrayDecode

final class SolutionTests: XCTestCase {

    func test_container() {
        runTest(lenientDecode_container)
    }

}
