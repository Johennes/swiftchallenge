import Foundation

// MARK: - General Notes

// Sorting of version numbers is a quite subtle problem. The key to solving this
// challenge is performing a numeric comparison of digit substrings instead of
// using the default character-by-character string comparison.
//
// To illustrate this, let's consider the version strings 1.9 and 1.10. In
// standard string comparison these two are ordered descending meaning that 1.9
// is considered to be larger than 1.10. This is because when comparing
// character by character, on the third character the algorithm compares 9
// against 1 and returns without analyzing the rest of the strings. What we
// ought to do, however, is combine consecutive digits into numbers and compare
// 9 against 10. Doing so results in the correct ordering of 1.9 being smaller
// than 1.10.
//
// In additon to performing a numeric comparison, special care needs to be taken
// to address the two requirements about v prefixes and .0 suffixes.

// MARK: - Regex + Single Comparison

// We employ a regular expression to remove v prefixes and .0 suffixes from the
// input strings and then use the built-in compare method with the .numeric
// option to obtain the result.
//
// A tricky edge case is that .0 substrings can be followed by further non-digit
// characters as in 2.0-alpha. To address this we use a positive look-ahead and
// an alternation to check for either non-digit characters or the end of the
// string.
//
// If you are unsure how to interpret the regex used below, try pasting it into
// the https://regex101.com website.
//
// Time complexity (worst case): O(n)
// Space complexity (worst case): O(n)
//
// Here n is the maximum of the length of both input strings
//
// Obviously, time and space complexity of this solution highly depend on the
// implementation of the standard library methods used below. Conceptually,
// regex matching, string replacement and numeric comparison should all be
// possible to be performed in O(n) time. The string replacement requires O(n)
// space because strings are value types and we construct new instances.

func compareVersions_regexSingleComparison(
    _ version1: String,
    _ version2: String) -> ComparisonResult
{
    let s1 = version1.replacingOccurrences(
        of: #"(?:^v?|(?:\.0+)+(?=[^\d\.]|$))"#,
        with: "",
        options: .regularExpression)
    let s2 = version2.replacingOccurrences(
        of: #"(?:^v?|(?:\.0+)+(?=[^\d\.]|$))"#,
        with: "",
        options: .regularExpression)
    return s1.compare(s2, options: .numeric)
}
