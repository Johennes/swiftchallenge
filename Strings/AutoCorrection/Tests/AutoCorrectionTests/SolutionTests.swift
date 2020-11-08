import Foundation
import XCTest
@testable import AutoCorrection

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_conditionalIteration", test_conditionalIteration)
    ]

    func test_conditionalIteration() {
        runTest(canAutocorrect_conditionalIteration)
    }

}
