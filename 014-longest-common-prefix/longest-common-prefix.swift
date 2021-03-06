// Write a function to find the longest common prefix string amongst an array of strings.
//
// If there is no common prefix, return an empty string "".
//
// Example 1:
//
//
// Input: ["flower","flow","flight"]
// Output: "fl"
//
//
// Example 2:
//
//
// Input: ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.
//
//
// Note:
//
// All given inputs are in lowercase letters a-z.
//


class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        } else if strs.count == 1 {
            return strs[0]
        }
        
        let newStr = strs.first!
        
        var prefix = ""
        var bestPrefix = ""

        for i in newStr {
            prefix.append(i)
            for str in strs {
                if !str.hasPrefix(prefix) {
                    return bestPrefix
                }
            }
            
            bestPrefix = prefix
        }

        return bestPrefix
    }
}
