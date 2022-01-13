class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var length = 0
        var i = 0
        
        var letter: [Character: Int] = [:]
        
        for (index, char) in s.enumerated() {
            if let position = letter[char] {
                i = max(i, position)
            }
            length = max(length, index - i + 1)
            letter[char] = index + 1
        }
        return length
    }
}