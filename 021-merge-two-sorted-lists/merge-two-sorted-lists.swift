// Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
//
// Example:
//
// Input: 1->2->4, 1->3->4
// Output: 1->1->2->3->4->4
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        
        var result: ListNode?
        
        if l1!.val <= l2!.val {
            result = l1
            result!.next = mergeTwoLists(result!.next, l2)
        } else {
            result = l2
            result!.next = mergeTwoLists(l1, result!.next)
        }
        
        return result
    }
}
