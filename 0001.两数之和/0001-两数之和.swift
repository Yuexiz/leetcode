class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic: [Int: Int] = [:]
        for (index, a) in nums.enumerated() {
            let b = target - a
            if (dic[b] != nil && index != dic[b]!) {
                return [index, dic[b]!] as! [Int]
            }
            dic[a] = index

        }
        return []
    }
}