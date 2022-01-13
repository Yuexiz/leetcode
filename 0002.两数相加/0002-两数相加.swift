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