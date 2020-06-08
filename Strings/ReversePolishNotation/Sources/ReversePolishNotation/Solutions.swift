import Foundation

// MARK: - General Notes

// The key to solving this problem for arbitrary RPN strings is identifying the
// canonical problem which is the single-operation RPN expression
//
//   NUMBER1 NUMBER2 OPERATOR
//
// This expression can be directly evaluated and arbitrarily complex RPN
// expressions can be built by combining several of such elementary expressions.
//
// As an example consider the expression
//
//   1 2 - 3 +
//
// To solve it you first have to compute the result of the sub-expression
//
//   1 2 -
//
// and then substitue the result back into the original expression which yields
//
//   -1 3 +
//
// This is now a canonical RPN expression of its own and can be directly
// evalutated to obtain the result 2.

// MARK: - Iteration with a Stack

// This is the most straightforward solution. We first convert the string to an
// array of components by splitting on whitespaces. Special care is taken to
// handle consecutive whitespaces and newline characters.
//
// Afterwards we iterate over the components from the beginning. Whenever we
// find a number, we push it onto a stack for later use. Once we hit an
// operator, we pop the last two numbers from the stack, compute the expression
// and then push the result back onto the stack. This is the equivalent of
// computing a sub-expression and inserting its result back into the original
// expression. We need to be careful here to handle invalid RPN expressions that
// don't have enough numbers to feed to an operator.
//
// If after iterating over all components, there is a single number left on the
// stack, we have our final result. If more numbers remain on the stack after
// iterating, there are operators missing in the RPN string and we throw an
// error.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(n)
//
// Here n is the number of operators and operands in the input string. The time
// complexity follows from the fact that the algorithm iterates at most once
// over each component. The space complexity is determined by the maximum size
// of the stack. The stack only contains the numbers and in a valid RPN
// expression there is one number more than operators. Consequently, for large
// expressions the amount of numbers is roughly n/2 which is O(n) as well. The
// degenerate case where all numbers have to be pushed onto the stack before the
// first operator is reached occurs when all the operators are at the end of
// the expression as in
//
//   1 2 3 4 + + +

func evaluate_stack(_ rpnString: String) throws -> Int {
    let components = rpnString.components(separatedBy: .whitespaces)
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        .filter { !$0.isEmpty }

    var stack = [Int]()

    for component in components {
        if let number = Int(component) {
            stack.append(number)
            continue
        }

        guard let n2 = stack.popLast(), let n1 = stack.popLast() else {
            throw NSError(domain: "SwiftChallenge", code: 0)
        }

        switch component {
        case "+":
            stack.append(n1 + n2)
        case "-":
            stack.append(n1 - n2)
        case "*":
            stack.append(n1 * n2)
        default:
            throw NSError(domain: "SwiftChallenge", code: 1)
        }
    }

    guard stack.count == 1, let result = stack.last else {
        throw NSError(domain: "SwiftChallenge", code: 2)
    }

    return result
}

// MARK: - Recursion

// By comparison, the recursive solution is a lot more involved than the
// iterative approach. As in the solution above, we start out by converting the
// input string to an array of operators and operands.
//
// Then we call a recursive method starting on the last component. The method
// reads the operator from the current index and then recurses to the left
// consuming further elements. Once a number occurs, it is returned as a result
// (this is the base case). Two results are then combined with the operator in
// the calling invocation of the recursive method.
//
// Note that special care has to be taken to handle the edge case of an RPN
// expression with just one number. This is a valid case despite the lack of any
// operators.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(n)
//
// Here n is the number of operators and operands in the input string. The time
// complexity follows from the fact that the algorithm visits each component
// at most once. The space complexity might look unexpected at first because no
// explicit storage data structure is used here. However, there is extra storage
// space reserved on the call stack with every recursive function call. That
// means the space complexity depends on the recursion depth. The maximum
// recursion depth occurs when all the operators are at the end of the
// expression as in
//
//   1 2 3 4 + + +
//
// and for large expressions amounts to n/2 which results in O(n).

func evaluate_recursive(_ rpnString: String) throws -> Int {
    func recurse(
        _ components: [String],
        startIndex: Int,
        requireOperation: Bool = false) throws -> (result: Int, consumed: Int)
    {
        guard startIndex >= 0, startIndex < components.count else  {
            throw NSError(domain: "SwiftChallenge", code: 0)
        }
        let last = components[startIndex]
        if !requireOperation, let number = Int(last) {
            return (number, 1)
        }
        let operation = last
        var consumed = 1

        let result2 = try recurse(components, startIndex: startIndex - consumed)
        let n2 = result2.result
        consumed += result2.consumed

        let result1 = try recurse(components, startIndex: startIndex - consumed)
        let n1 = result1.result
        consumed += result1.consumed

        switch operation {
        case "+":
            return (n1 + n2, consumed)
        case "-":
            return (n1 - n2, consumed)
        case "*":
            return (n1 * n2, consumed)
        default:
            throw NSError(domain: "SwiftChallenge", code: 1)
        }
    }

    let components = rpnString.components(separatedBy: .whitespaces)
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        .filter { !$0.isEmpty }

    let result = try recurse(
        components,
        startIndex: components.count - 1,
        requireOperation: components.count != 1)
    return result.result
}
