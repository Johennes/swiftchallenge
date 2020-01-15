import XCTest
@testable import LenientArrayDecode

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(lenientDecode)
//    }

}

func runTest(_ method: (Data) throws -> [Int]) {
    XCTAssertEqual(try method(data("[]")), [])
    XCTAssertEqual(try method(data("[1, 2, 3]")), [1, 2, 3])
    XCTAssertEqual(try method(data("[true, false]")), [])
    XCTAssertEqual(try method(data("[1, 1.5, 2]")), [1, 2])
    XCTAssertEqual(try method(data("[1, \"1.5\", 2]")), [1, 2])
    XCTAssertEqual(try method(data("[1, {\"v\": 0}, 2]")), [1, 2])
}

private func data(_ string: String) -> Data! {
    return string.data(using: .utf8)
}
