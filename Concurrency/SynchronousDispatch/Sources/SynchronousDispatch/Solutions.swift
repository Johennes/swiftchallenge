import Foundation

// MARK: - General Notes

// The key thing to notice is that the challenge code did not specify the
// .concurrent attribute when creating the queue. As a result, although the
// queue supports asynchronous execution, it is serial, meaning that it will
// only execute one task at a time and start the next task only after the
// current one has completed.
//
// Using this observation, it immediately follows that the asynchronous block
// is executed first (because it is scheduled first), and the synchronous block
// second (because it is scheduled second), but only after the asynchronous
// block has finished. The calling thread blocks until both blocks have finished
// and so the function is deterministic and free of race conditions.

// MARK: Function Expression

// A (mathematical) function expression combining the two successive blocks.

func solution_function(i: Int) -> Int {
    return (i * 2) + 3
}

// MARK: Synchronous Execution

// This is the equivalent of the challenge function written with two
// synchronously executed blocks which produces the exact same result.

func solution_synchronous(i: Int) -> Int {
    let queue = DispatchQueue(label: "Concurrency FTW!")
    var result = i
    queue.sync { result = result * 2 }
    queue.sync { result = result + 3 }
    return result
}
