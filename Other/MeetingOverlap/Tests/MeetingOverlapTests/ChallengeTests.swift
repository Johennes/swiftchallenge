import Foundation
import XCTest
@testable import MeetingOverlap

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(numberOfMeetingRooms)
//    }

}

func runTest(_ method: ([Meeting]) -> Int) {
    XCTAssertEqual(0, method([]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60))]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 14:00"), duration: .minutes(60))]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 13:00"), duration: .minutes(60))]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 11:00"), duration: .minutes(60))]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 10:00"), duration: .minutes(60))]))
    XCTAssertEqual(1, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-20 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-21 12:00"), duration: .minutes(60))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:30"), duration: .minutes(60))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 11:30"), duration: .minutes(60))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 11:00"), duration: .minutes(180))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:15"), duration: .minutes(30))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:15"), duration: .minutes(30)),
        Meeting(start: date("2014-07-19 14:00"), duration: .minutes(60))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:15"), duration: .minutes(30)),
        Meeting(start: date("2014-07-19 10:00"), duration: .minutes(60))]))
    XCTAssertEqual(2, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:15"), duration: .minutes(30)),
        Meeting(start: date("2014-07-19 11:15"), duration: .minutes(60))]))
    XCTAssertEqual(3, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60))]))
    XCTAssertEqual(3, method([
        Meeting(start: date("2014-07-19 12:00"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 12:15"), duration: .minutes(60)),
        Meeting(start: date("2014-07-19 11:45"), duration: .minutes(60))]))
}

private let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm"
    return formatter
}()

private func date(_ string: String) -> Date! {
    return formatter.date(from: string)
}

private extension TimeInterval {
    static func minutes(_ count: Int) -> TimeInterval {
        return TimeInterval(60 * count)
    }
}
