class Solution {
   func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        if nums1.isEmpty && nums2.isEmpty {
            return 0
        }
        
        let isShuangshu = (nums1.count + nums2.count) % 2 == 0
        
        let k = isShuangshu ? (nums1.count + nums2.count) / 2 : (nums1.count + nums2.count - 1) / 2 // 若单数 取 a[k] else (a[k - 1] + a[k]) / 2
        
        // k = 1
        var i = 0 // nums1 now index
        var j = 0 // nums2 now index
        
        var newArr: [Int] = []
        while newArr.count < k + 1 {
            // 越界问题
            if i == nums1.count && j < nums2.count {
                newArr.append(nums2[j])
                j += 1
            } else if j == nums2.count && i < nums1.count {
                newArr.append(nums1[i])
                i += 1
                
            } else {
            
                if nums1[i] < nums2[j] {
                    newArr.append(nums1[i])
                    i += 1
                } else {
                    newArr.append(nums2[j])
                    j += 1
                }
            }
        }
        print(newArr)
        print(k)
        print(isShuangshu)
        return isShuangshu ? (Double(newArr[k - 1]) + Double(newArr[k])) / 2 : Double(newArr[k])
    }
}