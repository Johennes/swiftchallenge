// MARK: - Types

protocol P {
    func a() -> String
}

extension P {
    func a() -> String { return "P.a" }
    func b() -> String { return "P.b" }
}

struct S: P {
    func a() -> String { return "S.a" }
    func b() -> String { return "S.b" }
}

class C: P {
    init() {}
    func a() -> String { return "C.a" }
    func b() -> String { return "C.b" }
}

// MARK: - Challenge 1

func challenge1() -> (a: String, b: String) {
    let obj = S()
    return (a: obj.a(), b: obj.b())
}

//func solution1() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 2

func challenge2() -> (a: String, b: String) {
    let obj = C()
    return (a: obj.a(), b: obj.b())
}

//func solution2() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 3

func challenge3() -> (a: String, b: String) {
    let obj: P = S()
    return (a: obj.a(), b: obj.b())
}

//func solution3() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 4

func challenge4() -> (a: String, b: String) {
    let obj: P = C()
    return (a: obj.a(), b: obj.b())
}

//func solution4() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 5

func challenge5() -> (a: String, b: String) {
    func challenge<T: P>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(S())
}

//func solution5() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 6

func challenge6() -> (a: String, b: String) {
    func challenge<T: P>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(C())
}

//func solution6() -> (a: String, b: String) {
//    <#T##Insert code#>
//}

// MARK: - Challenge 7

func challenge7() -> (a: String, b: String) {
    func challenge<T: C>(_ obj: T) -> (a: String, b: String) {
        return (a: obj.a(), b: obj.b())
    }
    return challenge(C())
}

//func solution7() -> (a: String, b: String) {
//    <#T##Insert code#>
//}
