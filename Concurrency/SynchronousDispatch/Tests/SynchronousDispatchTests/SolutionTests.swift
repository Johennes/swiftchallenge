import Foundation
import XCTest
@testable import SynchronousDispatch

final class SolutionTests: XCTestCase {

    func test_function() {
        runTest(solution_function)
    }

    func test_synchronous() {
        runTest(solution_synchronous)
    }

}
