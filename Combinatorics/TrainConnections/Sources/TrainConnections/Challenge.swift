import Foundation

struct Route: Equatable, Hashable, CustomStringConvertible {
    let origin: String
    let destination: String
    let departure: Date
    let arrival: Date

    var description: String {
        return "🚂 \(origin) → \(destination)"
    }
}

//func makeConnections(from routes: [Route]) -> [[Route]] {
//    <#T##Insert code#>
//}
