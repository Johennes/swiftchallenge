import Foundation
import XCTest
@testable import DateDecoding

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(decode)
//    }

}

func runTest(_ method: (Data) throws -> P) {
    XCTAssertEqual(
        try method(data("{\"date\": 0}")).date,
        Date(timeIntervalSince1970: 0))
    XCTAssertEqual(
        try method(data("{\"date\": 459125100}")).date,
        Date(timeIntervalSince1970: 459125100))
    XCTAssertThrowsError(
        try method(data("{\"date\": \"foo\"}")))
}

private func data(_ string: String) -> Data! {
    return string.data(using: .utf8)
}
