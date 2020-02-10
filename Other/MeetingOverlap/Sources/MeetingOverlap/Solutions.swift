import Foundation

// MARK: - Sort & Count

// To get to the bottom of this problem it helps to visualize it. Consider the
// following example situation where two meetings A and B happen back to back.
//
//   |- A -|- B -|
//
// Obviously this setup requires just one meeting room. Building upon that,
// consider the case where a third meeting C takes place in parallel to A and B.
//
//   |- A -|- B -|
//      |- C -|
//
// This scenario needs two rooms to host all meetings.
//
// Looking at the drawings above, it should be clear now that we need to compute
// their maximum height to solve the challenge. The maximum height gives the
// largest number of rooms taken at the same time. Consequently, it constitutes
// the number of rooms needed to host all meetings.
//
// The way to obtain the maximum height algorithmically might also dawn on you
// now upon closer inspection of the drawings: We can simply step through the
// meeting starts and ends in chronological order and keep a running counter.
// The counter increases whenever a meeting starts and decreases whenever a
// meeting ends. The maximum value of this counter is the number of meeting
// rooms needed.
//
// Applying this approach in the solution below, we start by creating two sorted
// arrays of all meeting start and end times. It is vital to separate both times
// for each meeting because while a meeting is running, another meeting might
// start or end and, as described above, we need to iterate over the events in
// order.
//
// Next we define a class to hold the iteration state which possesses an index
// into each array as well as the current and maximum count. The class also
// contains methods for consuming the start and end of a meeting both of which
// modify the index and count properties accordingly. The use of a separate
// iteration state is not strictly necessary and, in fact, it's possible to
// write the iteration in very compact form without it. However, extracting the
// iteration state makes the code a bit easier to follow and understand albeit
// a bit longer.
//
// Using the state object we then iterate until both arrays have been consumed.
// When either of the arrays has been exceeded, we consume from the respective
// other one. When neither array has been exceeded, we consume the earliest of
// the next events from both arrays, preferring the end event if both are equal.
// This part is crucial because back to back meetings end and start at the same
// time but can use the same room so we need to consume the end (decrease the
// counter) before consuming the start (increase the counter) to prevent
// overcounting.
//
// Time complexity (worst case): O(n * log(n))
// Space complexity (worst case): O(n)
//
// Here n is the number of meetings. The time complexity is determined by the
// usual sorting complexity of n * log(n) as the iteration itself is only O(n)
// since it loops over each array merely once.

func solution_sortAndCount(for meetings: [Meeting]) -> Int {
    let starts = meetings.map { $0.start }.sorted()
    let ends = meetings.map {
        $0.start.addingTimeInterval($0.duration) }.sorted()

    class IterationState {
        var count = 0
        var max = 0
        var startIndex = 0
        var endIndex = 0

        func consumeStart() {
            count += 1
            if count > max {
                max = count
            }
            startIndex += 1
        }

        func consumeEnd() {
            count -= 1
            endIndex += 1
        }
    }

    let state = IterationState()

    while state.startIndex < starts.count || state.endIndex < ends.count {
        guard state.startIndex < starts.count else {
            state.consumeEnd()
            continue
        }
        guard state.endIndex < ends.count else {
            state.consumeStart()
            continue
        }
        if starts[state.startIndex] < ends[state.endIndex] {
            state.consumeStart()
        } else {
            state.consumeEnd()
        }
    }

    return state.max
}
