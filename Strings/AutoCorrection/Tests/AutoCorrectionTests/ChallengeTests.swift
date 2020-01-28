import Foundation
import XCTest
@testable import AutoCorrection

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(canAutocorrect)
//    }

}

func runTest(_ method: (String, String) -> Bool) {
    check(method, "", "", false)
    check(method, "Apple", "", false)
    check(method, "Apple", "Apple", false)
    check(method, "Apple", "Applepi", false)
    check(method, "Apple", "anApple", false)
    check(method, "Apple", "App", false)
    check(method, "Apple", "ple", false)
    check(method, "Apple", "Ale", false)
    check(method, "Apple", "Appl", true)
    check(method, "Apple", "pple", true)
    check(method, "Apple", "Aple", true)

}

private func check(
    _ method: (String, String) -> Bool,
    _ input: String,
    _ correction: String,
    _ result: Bool,
    file: StaticString = #file,
    line: UInt = #line)
{
    let message: (String, String) -> String = {
        ["\($1) should", result ? "" : "not",
         "be a valid autocorrection for \($0)"]
            .filter { !$0.isEmpty }
            .joined(separator: " ")
    }
    XCTAssertEqual(method(input, correction), result,
        message(input, correction), file: file, line: line)
    XCTAssertEqual(method(correction, input), result,
        message(correction, input), file: file, line: line)
}
