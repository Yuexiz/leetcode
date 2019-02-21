// Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
// An input string is valid if:
//
//
// 	Open brackets must be closed by the same type of brackets.
// 	Open brackets must be closed in the correct order.
//
//
// Note that an empty string is also considered valid.
//
// Example 1:
//
//
// Input: "()"
// Output: true
//
//
// Example 2:
//
//
// Input: "()[]{}"
// Output: true
//
//
// Example 3:
//
//
// Input: "(]"
// Output: false
//
//
// Example 4:
//
//
// Input: "([)]"
// Output: false
//
//
// Example 5:
//
//
// Input: "{[]}"
// Output: true
//
//


class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack: [Character] = []
        
        let array: [Character] = ["(", "{", "["]
        for c in s {
            if array.contains(c) {
                stack.append(c)
            } else {
                
                // 出栈
                guard let d = stack.popLast() else { return false }
                if !((c == ")" && d == "(") || (c == "}" && d == "{") || (c == "]" && d == "[")) {
                    return false
                }
                
            }
        }
        
        return stack.isEmpty
    }
}
