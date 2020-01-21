import Foundation
import XCTest
@testable import VersionSort

final class SolutionTests: XCTestCase {

    func test_regexSingleComparison() {
        runTest(compareVersions_regexSingleComparison)
    }

}
