// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
// You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
// Example:
//
//
// Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
// Output: 7 -> 0 -> 8
// Explanation: 342 + 465 = 807.
//
//


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var la = l1
        var lb = l2

        var pre = ListNode(0)
        let header = pre
        
        var carry = 0
        
        while la != nil || lb != nil || carry != 0 {
            let cur = ListNode(0)
            let sum = ((la?.val ?? 0) + (lb?.val ?? 0)) + carry
            cur.val = sum % 10
            
            carry = sum / 10
            
            pre.next = cur
            
            la = la?.next
            lb = lb?.next
            
            pre = cur
            
        }
        return header.next
    }
}
