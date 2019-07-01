// Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
//
// If the last word does not exist, return 0.
//
// Note: A word is defined as a character sequence consists of non-space characters only.
//
// Example:
//
//
// Input: "Hello World"
// Output: 5
//
//
//  
//


class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var lengh = 0
        if s.count == 0 {
            return 0
        }
        for i in s.reversed() {
            if i == " " {
                if lengh > 0 {
                    return lengh
                }
                
            } else {
                lengh += 1
            }
        }
        
        return lengh
    }
}
