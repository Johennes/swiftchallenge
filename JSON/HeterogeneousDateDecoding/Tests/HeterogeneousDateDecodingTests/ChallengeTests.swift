import Foundation
import XCTest
@testable import HeterogeneousDateDecoding

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(decode)
//    }

}

func runTest(_ method: (Data) throws -> P) {
    XCTAssertEqual(
        try method(data("{\"date1\": 0, \"date2\": 0}")).date1,
        Date(timeIntervalSince1970: 0))
    XCTAssertEqual(
        try method(data("{\"date1\": 0, \"date2\": 0}")).date2,
        Date(timeIntervalSince1970: 0))
    XCTAssertEqual(
        try method(data("{\"date1\": 459125100, \"date2\": 0}")).date1,
        Date(timeIntervalSince1970: 459125100))
    XCTAssertEqual(
        try method(data("{\"date1\": 459125100, \"date2\": 0}")).date2,
        Date(timeIntervalSince1970: 0))
    XCTAssertEqual(
        try method(data("{\"date1\": 0, \"date2\": 459125160000}")).date1,
        Date(timeIntervalSince1970: 0))
    XCTAssertEqual(
        try method(data("{\"date1\": 0, \"date2\": 459125160000}")).date2,
        Date(timeIntervalSince1970: 459125160))
    XCTAssertThrowsError(
        try method(data("{\"date1\": \"foo\", \"date2\": 0}")))
    XCTAssertThrowsError(
        try method(data("{\"date1\": 0, \"date2\": \"foo\"}")))
    XCTAssertThrowsError(
        try method(data("{\"date1\": \"foo\", \"date2\": \"foo\"}")))
}

private func data(_ string: String) -> Data! {
    return string.data(using: .utf8)
}
