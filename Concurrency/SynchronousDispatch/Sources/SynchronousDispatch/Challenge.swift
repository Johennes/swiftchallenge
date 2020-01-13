import Foundation

func challenge(_ i: Int) -> Int {
    let queue = DispatchQueue(label: "Concurrency FTW!")
    var result = i
    queue.async { result = result * 2 }
    queue.sync { result = result + 3 }
    return result
}

//func solution(_ i: Int) -> Int {
//    <#T##Insert code#>
//}
