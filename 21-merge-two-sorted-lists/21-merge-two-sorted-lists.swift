/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let startNode = ListNode()
        var cur1 = list1
        var cur2 = list2
        var ansCur = startNode
        while cur1 != nil || cur2 != nil {
            ansCur.next = ListNode()
            ansCur = ansCur.next!
            if (cur1 == nil) {
                ansCur.val = cur2!.val
                cur2 = cur2?.next
            } else if (cur2 == nil) {
                ansCur.val = cur1!.val
                cur1 = cur1?.next
            } else if (cur1!.val < cur2!.val) {
                ansCur.val = cur1!.val
                cur1 = cur1?.next
            } else {
                ansCur.val = cur2!.val
                cur2 = cur2?.next
            }
        }
        return startNode.next
    }
}