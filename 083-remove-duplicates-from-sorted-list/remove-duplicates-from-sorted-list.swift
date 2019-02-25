// Given a sorted linked list, delete all duplicates such that each element appear only once.
//
// Example 1:
//
//
// Input: 1->1->2
// Output: 1->2
//
//
// Example 2:
//
//
// Input: 1->1->2->3->3
// Output: 1->2->3
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        if head?.next == nil {
            return head
        }
        let origin = head
        var node: ListNode? = origin
        var val: Int = node!.val
        
        while node?.next != nil { // 第一次就是第二个
            if node!.next!.val <= val {
                node?.next = node?.next?.next
                
            } else {
                val = node!.next!.val
                node = node?.next
            }
            
            
        }
        
        return origin
    }
}
