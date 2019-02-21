// Implement strStr().
//
// Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
//
// Example 1:
//
//
// Input: haystack = "hello", needle = "ll"
// Output: 2
//
//
// Example 2:
//
//
// Input: haystack = "aaaaa", needle = "bba"
// Output: -1
//
//
// Clarification:
//
// What should we return when needle is an empty string? This is a great question to ask during an interview.
//
// For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
//


class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if haystack == needle || needle.isEmpty {
            return 0
        }
        
        if haystack.count < needle.count {
            return -1
        }
        
        let lengh = needle.count
        
        for (index, str) in haystack.enumerated() where str == needle.first! {
            // 直接获取string来比较
            
            if index+lengh > haystack.count {
                return -1
            }
            
            let start = haystack.index(haystack.startIndex, offsetBy: index)
            let end = haystack.index(haystack.startIndex, offsetBy: index+lengh)
            
            if haystack[start..<end] == needle {
                return start.encodedOffset
            }
        }
        
        return -1
        
    }
}
