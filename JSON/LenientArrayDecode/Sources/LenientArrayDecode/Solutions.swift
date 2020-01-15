import Foundation

// MARK: - General Notes

// Interestingly, as of writing this, the Swift standard library does not
// contain any reusable direct solution to this kind of problem.
//
// The naive approach
//
//     try JSONDecoder().decode([Int?].self, from: json)
//
// throws on the first non-Int and non-nil element in the input data and aborts
// decoding without any output.
//
// The older Objective-C API
//
//     try JSONSerialization.jsonObject(with: json, options: []) as? NSArray
//
// yields a heterogeneous array. However, it bridges false / true into 0 / 1
// which proves rather difficult to handle.

// MARK: - Decoding Container

// In order to control the element decoding and to gracefully handle decoding
// errors we create a container type that wraps a value representing either the
// decoded element or an error. We then first decode the input data into an
// array of containers and then unwrap all containers, keeping only those that
// contain an element value.
//
// Note that we use the standard library type Result which has a neat API that
// allows us to implement the algorithm with rather little code. Using an
// optional or a custom type for the wrapped value would work as well while
// requiring slightly more code.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(n)
//
// Here n is the length of the JSON string.
//
// Note that the complexities are identical to the homogeneous array case which
// can be handled with a single JSONDecoder statement.

func lenientDecode_container(_ json: Data) throws -> [Int] {
    struct Container<T: Decodable>: Decodable {
        let result: Result<T,Error>

        init(from decoder: Decoder) throws {
            result = Result(catching: { try T(from: decoder) })
        }
    }

    let containers = try JSONDecoder().decode([Container<Int>].self, from: json)
    return containers.compactMap { try? $0.result.get() }
}
