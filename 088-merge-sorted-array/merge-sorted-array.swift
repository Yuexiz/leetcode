// Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
//
// Note:
//
//
// 	The number of elements initialized in nums1 and nums2 are m and n respectively.
// 	You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
//
//
// Example:
//
//
// Input:
// nums1 = [1,2,3,0,0,0], m = 3
// nums2 = [2,5,6],       n = 3
//
// Output: [1,2,2,3,5,6]
//
//


class Solution {
   func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        if nums1.isEmpty {
            nums1 = nums2
            return
        }
        
        if nums2.isEmpty {
            return
        }
        var num1Index = 0
        var num2Index = 0
        var num2Value = nums2[0]
        
        for i in 0..<m+n {

            if (nums1[i] >= num2Value || num1Index == m) && num2Index < n {
                nums1.insert(num2Value, at: i)
                nums1.remove(at: nums1.count - 1)
                num2Index += 1
                if num2Index < n {
                    num2Value = nums2[num2Index]
                }
                
            } else {
               num1Index += 1

            }
        }
        
    }
}
