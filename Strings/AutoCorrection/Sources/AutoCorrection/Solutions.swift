import Foundation

// MARK: - General Notes

// It is important to realize that the edit difference must be EXACTLY one
// meaning that an identical string does not represent a valid autocorrection.
// In addition, autocorrections are mutual in the sense that if S1 is a valid
// autocorrection of S2, then S2 is also a valid autocorrection of S1. Any
// solution must reflect these two properties.

// MARK: - Conditional Iteration

// We start out by comparing the length of both strings. An edit difference of
// one implies that the lengths can differ by at most one as well. If the
// difference is larger, we can immediately return false since in this case the
// autocorrection requirement can never be met.
//
// Next, we utilize the mutuality property mentioned above. From the latter it
// follows that we only have to check for the cases
//
//   1. Replacing one character in any string if both strings have the same
//      length
//   2. Inserting one character in the shorter string if both strings are of
//      different length
//
// The case of removing one character from the longer string is the equivalent
// of case 2 and does not have to be treated separately.
//
// To check these two cases, we iterate over the two strings with two separate
// indexes, both starting at zero. Inside the loop, if the characters at these
// indexes are identical, we increment both indexes and continue. If the
// characters differ, we use a boolean variable to check whether we have already
// made an edit before. If so, we can exit the loop and return false since the
// one-edit requirement is violated. If no edit has been made so far, we record
// one and conditionally increment the indexes. If both strings are of equal
// length, both indexes are incremented by one (to account for a character
// replacement). Otherwise, only the index of the longer string is increment (to
// account for an insertion in the shorter string).
//
// When one of the indexes exceeds the length of its string, the loop is exited
// and we return true if either an edit has occured or if both strings differ in
// length (meaning they must be identical except for the last letter in the
// longer string). Otherwise, the two strings are copies of one another and can
// not form a valid autocorrection pair.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(1)
//
// Here n is the length of the shorter string. The time complexity follows from
// the fact that the loop is only entered when the length of both strings
// differs by at most one. In this case both lengths are of the same order of
// magnitude though and so it doesn't matter which one we choose. When both
// strings differ greatly in length, the time complexity is O(1) because we
// exit immediately on the first guard. Therefore, only the length of the
// shorter string has an affect on the time complexity.

func canAutocorrect_conditionalIteration(
    input: String,
    correction: String) -> Bool
{
    guard abs(input.count - correction.count) <= 1 else {
        return false
    }

    let (s1, s2) = input.count < correction.count
        ? (input, correction)
        : (correction, input)

    var i1 = 0, i2 = 0
    var didEdit = false

    while i1 < s1.count, i2 < s2.count {
        let c1 = s1[s1.index(s1.startIndex, offsetBy: i1)]
        let c2 = s2[s2.index(s2.startIndex, offsetBy: i2)]

        guard c1 != c2 else {
            i1 += 1
            i2 += 1
            continue
        }

        guard !didEdit else {
            return false
        }

        didEdit = true

        i1 += s1.count == s2.count ? 1 : 0
        i2 += 1
    }

    return didEdit || s1.count != s2.count
}
