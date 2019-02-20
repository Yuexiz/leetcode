// Given a 32-bit signed integer, reverse digits of an integer.
//
// Example 1:
//
//
// Input: 123
// Output: 321
//
//
// Example 2:
//
//
// Input: -123
// Output: -321
//
//
// Example 3:
//
//
// Input: 120
// Output: 21
//
//
// Note:
// Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
//


class Solution {
    func reverse(_ x: Int) -> Int {
        
        var result = 0
        var remain = x
        while remain != 0 {
            result = remain % 10 + result * 10
            remain /= 10
            
            if result > Int32.max || result < Int32.min { // 运行时候会产生溢出
                return 0
            }
        }
        return result
    }
}
