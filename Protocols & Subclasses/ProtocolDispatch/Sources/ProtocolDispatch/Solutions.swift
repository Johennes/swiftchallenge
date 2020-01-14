// MARK: - Challenge 1

// The challenge function accesses the methods a and b using a variable typed
// with the struct S. As a result, at runtime, the method implementations on S
// are called, ignoring the default implementations from the protocol P, which
// results in the return values "S.a" and "S.b".

func solution1_constant() -> (a: String, b: String) {
    return (a: "S.a", b: "S.b")
}

// MARK: - Challenge 2

// This case is analogous to the challenge before and follows the same logic.
// The fact that a class is used instead of a struct doesn't make any
// difference here.

func solution2_constant() -> (a: String, b: String) {
    return (a: "C.a", b: "C.b")
}

// MARK: - Challenge 3

// In the challenge function the methods a and b are accessed on an object of
// type S, referenced using a variable typed with the protocol P. While both
// methods have a default implementation in an extension of P, it is important
// to realize that only the method a is defined in the protocol itself whereas
// the method b is defined merely in the extension.
//
// When using a protocol-typed variable, methods defined in the protocol are
// dispatched dynamically, meaning the implementation on the runtime type is
// used. The runtime type of the object is S and so the result of calling the
// method a is "S.a".
//
// Contrarily, when protocol extension methods are accessed through a
// protocol-typed variable, static dispatch is utilized, meaning that the
// implementation from the build-time type is used. The build-time type is P
// and, therefore, the result of calling the method b is "P.b".

func solution3_constant() -> (a: String, b: String) {
    return (a: "S.a", b: "P.b")
}

// MARK: - Challenge 4

// This case is analogous to the challenge before and follows the same logic.
// The fact that a class is used instead of a struct doesn't make any
// difference here.

func solution4_constant() -> (a: String, b: String) {
    return (a: "C.a", b: "P.b")
}

// MARK: - Challenge 5

// This challenge uses an object of runtime type S and passes it to a generic
// function, the argument of which is constrained to conform to P. The compiler
// retains this restriction when generating implementations for concrete types.
// As a result, the body of the function accesses the methods on the argument
// as if it were typed with P and so the output is the same as in the third
// challenge.
//
// The fact that the dispatch doesn't follow the same rules as if the argument
// were typed with S might seem irritating at first. It gets more clear though
// when you consider that at build time the compiler cannot know all concrete
// types conforming to P (some might be defined in a different module, for
// instance). Therefore, it can only generate code using the generic type
// constraint which means the argument is resolved to have the build time type
// P.

func solution5_constant() -> (a: String, b: String) {
    return solution3_constant()
}

// MARK: - Challenge 6

// This case is analogous to the challenge before and follows the same logic.
// The fact that a class is used instead of a struct doesn't make any
// difference here.

func solution6_constant() -> (a: String, b: String) {
    return solution4_constant()
}

// MARK: - Challenge 7

// This challenge is similar to the previous two, except that this time the
// generic constraint requires the argument to be a (sub)type of the class C.
// Utilizing the logic explained before it follows that the argument's build
// time type is C and so the same rules that were explained in the second
// challenge apply.

func solution7_constant() -> (a: String, b: String) {
    return solution2_constant()
}
