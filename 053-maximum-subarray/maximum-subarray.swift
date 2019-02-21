// Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
//
// Example:
//
//
// Input: [-2,1,-3,4,-1,2,1,-5,4],
// Output: 6
// Explanation: [4,-1,2,1] has the largest sum = 6.
//
//
// Follow up:
//
// If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
//


class Solution {
    func maxSubArray(_ nums: [Int]) -> Int { // [-2,1,-3,4,-1,2,1,-5,4]
        
        if nums.isEmpty {
            return 0
        }
        
        var sum = nums[0]
        var result = nums[0]
    
        for i in 1..<nums.count {
            sum += nums[i]
            
            if nums[i] > sum {
                sum = nums[i]
            }
            if sum > result {
                result = sum
            }
            
        }
        
        return result
    }
}
