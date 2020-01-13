// MARK: - General Notes

// The key to identifying an anagram is to check whether the characters and
// their number of occurrences are identical in both strings.

// MARK: - One-Liner

// To check if both strings have the same characters with the same number of
// occurrences we simply sort and compare them.
//
// Time complexity (worst case): O(n log n)
// Space complexity (worst case): O(n)
//
// Here n is the length of the longer of the two strings.
//
// Note that these are the most usual complexities. Which sorting algorithm is
// chosen at runtime can depend on the input data and is out of our control.
// Therefore, the actual complexities might be better or worse than the values
// given above.

func isAnagram_oneLine(s1: String, s2: String) -> Bool {
    return s1.sorted() == s2.sorted()
}

// MARK: - Counting Characters

// To check the anagram condition we walk over the characters in both strings
// while counting and comparing their occurrences.
//
// An important case in which we can exit early to safe time is when both
// strings are of different length. By definition such strings cannot form
// an anagram.
//
// If both strings have equal length, we iterate over the first one and collect
// its character occurrences into a dictionary. Afterwards we iterate over the
// second string while decrementing the collected character counters. If any of
// the counters turns negative in the process, we know that the two strings have
// different numbers of occurrences for that particular character. That means
// the anagram condition is violated and we can immediately return false.
//
// When no negative counters were observed during the iteration, we can return
// true at the end. We don't have to check if any of the counters in the
// dictionary are still non-zero because we have ensured that both strings have
// the same length so that wouldn't be possible without also having negative
// counters.
//
// Decrementing the counters in the dictionary is a neat trick that saves us
// from having to build another dictionary for the second string's character
// occurrences which would require additional memory as well as additional time
// to compare both dictionaries.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(c)
//
// Here n is the length of the strings and c is the size of the character set.
// Since the latter is usually constant, the memory complexity could also be
// written as O(1) meaning that it does not depend on the size of the input.

func isAnagram_counting(s1: String, s2: String) -> Bool {
    if s1.count != s2.count {
        return false
    }

    var counters = [Character: Int]()

    for char in s1 {
        counters[char] = counters[char, default: 0] + 1
    }

    for char in s2 {
        counters[char] = counters[char, default: 0] - 1
        if counters[char]! < 0 {
            return false
        }
    }

    return true
}
