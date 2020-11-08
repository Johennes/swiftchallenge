import Foundation
import XCTest
@testable import VersionSort

final class SolutionTests: XCTestCase {

    static var allTests = [
        ("test_regexSingleComparison", test_regexSingleComparison)
    ]

    func test_regexSingleComparison() {
        runTest(compareVersions_regexSingleComparison)
    }

}
