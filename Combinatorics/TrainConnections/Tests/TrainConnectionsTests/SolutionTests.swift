import Foundation
import XCTest
@testable import TrainConnections

final class SolutionTests: XCTestCase {

    func test_recursive() {
        runTest(makeConnections_recursive)
    }

}
