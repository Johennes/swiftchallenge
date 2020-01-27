import Foundation
import XCTest
@testable import TrainConnections

class ChallengeTests: XCTestCase {

//    func test() {
//        runTest(makeConnections)
//    }

}

func runTest(_ method: ([Route]) -> [[Route]]) {
    check(method, routes: [], connections: [])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00],
          connections: [[berlin_münchen_2000_01_01_10_00]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   kiel_rostock_2000_01_01_12_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [kiel_rostock_2000_01_01_12_00]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_14_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_14_00]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_15_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_15_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_15_00,
                   kiel_rostock_2000_01_01_12_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_15_00],
                        [kiel_rostock_2000_01_01_12_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_15_00,
                   stuttgart_mannheim_2000_01_01_18_15,
                    kiel_rostock_2000_01_01_12_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_15_00],
                        [stuttgart_mannheim_2000_01_01_18_15],
                        [kiel_rostock_2000_01_01_12_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00],
                        [münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15]])
    check(method,
          routes: [berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_15_00,
                   stuttgart_mannheim_2000_01_01_18_15,
                   kiel_rostock_2000_01_01_12_00,
                   mannheim_frankfurt_2000_01_01_22_00],
          connections: [[berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_15_00],
                        [stuttgart_mannheim_2000_01_01_18_15],
                        [kiel_rostock_2000_01_01_12_00],
                        [mannheim_frankfurt_2000_01_01_22_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00],
                        [münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15],
                        [stuttgart_mannheim_2000_01_01_18_15,
                         mannheim_frankfurt_2000_01_01_22_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15],
                        [münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15,
                         mannheim_frankfurt_2000_01_01_22_00],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15,
                         mannheim_frankfurt_2000_01_01_22_00]])
    check(method,
          routes: [münchen_ulm_2000_01_01_14_30,
                   berlin_münchen_2000_01_01_10_00,
                   münchen_stuttgart_2000_01_01_15_00,
                   stuttgart_mannheim_2000_01_01_18_15,],
          connections: [[münchen_ulm_2000_01_01_14_30],
                        [berlin_münchen_2000_01_01_10_00],
                        [münchen_stuttgart_2000_01_01_15_00],
                        [stuttgart_mannheim_2000_01_01_18_15],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_ulm_2000_01_01_14_30],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00],
                        [münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15],
                        [berlin_münchen_2000_01_01_10_00,
                         münchen_stuttgart_2000_01_01_15_00,
                         stuttgart_mannheim_2000_01_01_18_15]])
}

private let berlin_münchen_2000_01_01_10_00 = Route(
    origin: "Berlin",
    destination: "München",
    departure: date("2000-01-01 10:00"),
    arrival: date("2000-01-01 14:30"))
private let kiel_rostock_2000_01_01_12_00 = Route(
    origin: "Kiel",
    destination: "Rostock",
    departure: date("2000-01-01 12:00"),
    arrival: date("2000-01-01 15:00"))
private let mannheim_frankfurt_2000_01_01_22_00 = Route(
    origin: "Mannheim",
    destination: "Frankfurt",
    departure: date("2000-01-01 22:00"),
    arrival: date("2000-01-02 00:30"))
private let münchen_ulm_2000_01_01_14_30 = Route(
    origin: "München",
    destination: "Ulm",
    departure: date("2000-01-01 14:45"),
    arrival: date("2000-01-01 16:15"))
private let münchen_stuttgart_2000_01_01_14_00 = Route(
    origin: "München",
    destination: "Stuttgart",
    departure: date("2000-01-01 14:00"),
    arrival: date("2000-01-01 17:00"))
private let münchen_stuttgart_2000_01_01_15_00 = Route(
    origin: "München",
    destination: "Stuttgart",
    departure: date("2000-01-01 15:00"),
    arrival: date("2000-01-01 18:00"))
private let stuttgart_mannheim_2000_01_01_18_15 = Route(
    origin: "Stuttgart",
    destination: "Mannheim",
    departure: date("2000-01-01 18:15"),
    arrival: date("2000-01-01 21:45"))

private let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm"
    return formatter
}()

private func date(_ string: String) -> Date! {
    return formatter.date(from: string)
}

private func check(
    _ method: ([Route]) -> [[Route]],
    routes: [Route],
    connections: [[Route]],
    file: StaticString = #file,
    line: UInt = #line)
{
    let result = method(routes)
    XCTAssertEqual(result.count, connections.count)
    XCTAssertEqual(Set(result), Set(connections), file: file, line: line)
}
