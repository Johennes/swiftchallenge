import Foundation

// MARK: - One-Liner

// Relying on the standard library function for reversing a string, all we have
// to do is utilize it on one string and compare the result to the other.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(1)
//
// Here n is the length of the first string.
//
// Note that for the space complexity we assumed the implementation of reversed
// to perform the reversal in place.

func isReverse_oneLine(s1: String, s2: String) -> Bool {
    return String(s1.reversed()) == s2
}

// MARK: - Iterating

// We begin by ensuring that both strings have the same length. If they don't,
// we can immediately return false since they can't form each other's reverse
// in this case by definition.
//
// To verify the reversal condition we then compare the two strings character by
// character while iterating one string from the beginning and the other from
// the end. As soon as two characters don't match up, we can immediately return
// false. If no mismatches were discovered during the iteration, we know that
// the strings are each other's reverse and return true.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(1)
//
// Here n is the length of the first string.

func isReverse_iterating(s1: String, s2: String) -> Bool {
    if s1.count != s2.count {
        return false
    }

    for i in 0 ..< s1.count {
        let i1 = s1.index(s1.startIndex, offsetBy: i)
        let i2 = s2.index(s2.endIndex, offsetBy: -i - 1)

        if s1[i1] != s2[i2] {
            return false
        }
    }

    return true
}
