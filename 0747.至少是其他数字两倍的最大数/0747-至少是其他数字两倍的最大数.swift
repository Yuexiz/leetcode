class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        // 最大值
        var i = 0
        // 次大值
        var j = 0
        var indexTemp = 0
        if nums.count < 2 { return 0 }
        for (index, a) in nums.enumerated() {
            if a > i {
                j = i
                i = a
                indexTemp = index
            } else if a > j {
                j = a
            }

        }
        if i >= 2 * j {
            return indexTemp
        }
        return -1
    }
}