// Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
// You may assume no duplicates in the array.
//
// Example 1:
//
//
// Input: [1,3,5,6], 5
// Output: 2
//
//
// Example 2:
//
//
// Input: [1,3,5,6], 2
// Output: 1
//
//
// Example 3:
//
//
// Input: [1,3,5,6], 7
// Output: 4
//
//
// Example 4:
//
//
// Input: [1,3,5,6], 0
// Output: 0
//
//


class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        
        if target <= nums.first! {
            return 0
        }
        
        if target > nums.last! {
            return nums.count
        }
        
        var resultIndex = 0
        
        for (index, i) in nums.enumerated() {
            resultIndex = index
            if i == target {
                return index
            } else if i > target {
                return resultIndex
            }
            
        }
        
        return 0
    }
}
