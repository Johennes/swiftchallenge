import Foundation
import XCTest
@testable import VersionSort

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(compareVersions)
//    }

}

func runTest(_ method: (String, String) -> ComparisonResult) {
    // Test cases from the README
    runTest(method, "1.0.1", "1.1.0", .orderedAscending)
    runTest(method, "1.9", "1.10", .orderedAscending)
    runTest(method, "3.0", "2.1.8", .orderedDescending)
    runTest(method, "4.7-alpha11", "4.7-alpha2", .orderedDescending)
    runTest(method, "v2.22", "2.22", .orderedSame)
    runTest(method, "2", "2.0.0", .orderedSame)
    // Numeric-only test cases, ascending / descending
    runTest(method, "0.1", "0.5", .orderedAscending)
    runTest(method, "0.1", "0.6.0", .orderedAscending)
    runTest(method, "0.1", "0.10", .orderedAscending)
    runTest(method, "0.1", "1", .orderedAscending)
    runTest(method, "0.1", "1.0", .orderedAscending)
    runTest(method, "0.1", "1.0.1", .orderedAscending)
    runTest(method, "0.1", "10", .orderedAscending)
    runTest(method, "1.2.3", "3.2.1", .orderedAscending)
    runTest(method, "1.2.3", "30.0", .orderedAscending)
    // Numeric-only test cases, same
    runTest(method, "1", "1", .orderedSame)
    runTest(method, "2.10", "2.10", .orderedSame)
    runTest(method, "3.23.12", "3.23.12", .orderedSame)
    runTest(method, "4.55.17.3", "4.55.17.3", .orderedSame)
    runTest(method, "172", "172", .orderedSame)
    runTest(method, "2", "2.0", .orderedSame)
    runTest(method, "2", "2.0.0", .orderedSame)
    runTest(method, "2", "2.00.00", .orderedSame)
    runTest(method, "2.0", "2.00.00", .orderedSame)
    // v prefix test cases
    runTest(method, "v9", "v20", .orderedAscending)
    runTest(method, "v0.1", "v1.2.3", .orderedAscending)
    runTest(method, "v3", "v3.0", .orderedSame)
    runTest(method, "v1.2", "v1.2", .orderedSame)
    runTest(method, "v3", "3.0.0", .orderedSame)
    // Suffix test cases
    runTest(method, "2.0-alpha1", "2.0-alpha2", .orderedAscending)
    runTest(method, "2.0-alpha2", "2.0-alpha10", .orderedAscending)
    runTest(method, "2.0-alpha10", "2.0-beta", .orderedAscending)
    runTest(method, "2.0_beta", "2.0_final", .orderedAscending)
    runTest(method, "2.0rc", "2.0rc", .orderedSame)
    runTest(method, "2-final", "2.0.0-final", .orderedSame)
}

private let pattern = #"^v?\d+(?:\.\d+)*(?:[_-]?[a-zA-Z]*\d*)?$"#

private func runTest(
    _ method: (String, String) -> ComparisonResult,
    _ version1: String,
    _ version2: String,
    _ result: ComparisonResult,
    file: StaticString = #file,
    line: UInt = #line)
{
    XCTAssertNotNil(
        version1.range(of: pattern, options: .regularExpression),
        "\(version1) does not match pattern", file: file, line: line)
    XCTAssertNotNil(
        version2.range(of: pattern, options: .regularExpression),
        "\(version2) does not match pattern", file: file, line: line)
    XCTAssertEqual(
        method(version1, version2), result, file: file, line: line)
    XCTAssertEqual(
        method(version2, version1), result.inverted, file: file, line: line)
}

extension ComparisonResult: CustomStringConvertible {
    public var description: String {
        switch self {
        case .orderedAscending:
            return "orderedAscending"
        case .orderedDescending:
            return "orderedDescending"
        case .orderedSame:
            return "orderedSame"
        }
    }

    public var inverted: ComparisonResult {
        switch self {
        case .orderedAscending:
            return .orderedDescending
        case .orderedDescending:
            return .orderedAscending
        case .orderedSame:
            return .orderedSame
        }
    }
}
