import Foundation

// MARK: - General Notes

// It is important to realize that any single Route object forms a valid
// connection of its own. As a result, when 3 routes A, B and C combine to a
// connection A → B → C, the output array should contain A → B → C as well as
// A → B and B → C. This train (pun intended) of thought can be extended to
// connections of arbitrary length.

// MARK: - Recursive Backtracking

// We tackle the problem by recursively backtracking over the space of solution
// candidates. Our recursion method tracks the current candidate in the first
// argument and the available routes to combine with the former in the second
// argument.
//
// As usual in recursion, we start with the base case which here consists of
// filtering down the available routes to those that can be matched at the end
// of the current candidate. If no routes remain after the filtering, we can
// abort the recursion and return the current candidate.
//
// If the base case is not met, we iterate over the remaining routes, append
// each of them to the current candidate and recurse. Note that we use the
// passed in routes instead of the remaining ones in the recursion because
// routes that did not connect in this pass of the method might still do so in
// the next one.
//
// In order to also retain all prefixes of each full connection, we concatenate
// the recursive result with the current candidate. This also guarantees that
// all other subranges of a connection are retained in the output because the
// algorithm tries each available route as a starting point.
//
// Time complexity (worst case): O(n^2)
// Space complexity (worst case): O(n^2)
//
// Here n is the number of routes in the input array. The worst case complexity
// occurs when the routes form a degenerated graph meaning all of them combine
// to a single long connection. In this case the recursion depths is n and on
// average each recursion step has to filter an array of n / 2 remaining routes.
// Following the same argument, each recursion step on average creates a new
// array of length n / 2.

func makeConnections_recursive(from routes: [Route]) -> [[Route]] {
    func recurse(candidate: [Route] = [], routes: [Route]) -> [[Route]] {
        let remaining = routes.filter { next in
            candidate.last == nil
                || candidate.last!.destination == next.origin
                && candidate.last!.arrival < next.departure
        }

        guard !remaining.isEmpty else {
            return candidate.isEmpty ? [] : [candidate]
        }

        var result = remaining.map { next in
            recurse(
                candidate: candidate + [next],
                routes: routes.filter { $0 != next })
        }.flatMap { $0 }

        if !candidate.isEmpty {
            result.append(candidate)
        }

        return result
    }

    return recurse(routes: routes)
}
