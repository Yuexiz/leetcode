// Given two binary strings, return their sum (also a binary string).
//
// The input strings are both non-empty and contains only characters 1 or 0.
//
// Example 1:
//
//
// Input: a = "11", b = "1"
// Output: "100"
//
// Example 2:
//
//
// Input: a = "1010", b = "1011"
// Output: "10101"
//


class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        if a.count == 0 {
            return b
        }
        
        if b.count == 0 {
            return a
        }
        
        let aString = Array(a)
        let bString = Array(b)
        
        var newString = ""
        
        var up = 0
        var aIndex = a.count - 1
        var bIndex = b.count - 1
        
        var tempA = 0
        var tempB = 0
        
        while aIndex > -1 || bIndex > -1 || up > 0 {
            
            tempA = (aIndex >= 0) ? Int(String(aString[aIndex]))! : 0
            tempB = (bIndex >= 0) ? Int(String(bString[bIndex]))! : 0
            
            up += tempA + tempB
            newString = "\(up % 2)" + newString
            up /= 2
            
            aIndex -= 1
            bIndex -= 1
        }
        
        return newString
    }
}
