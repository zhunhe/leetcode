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
        if list1 == nil && list2 == nil {return nil}
        let answer = ListNode()
        var list1 = list1, list2 = list2, curAnswer = answer
        while list1 != nil || list2 != nil {
            if list1 == nil {
                curAnswer.val = list2!.val
                list2 = list2?.next
            } else if list2 == nil {
                curAnswer.val = list1!.val
                list1 = list1?.next
            } else if list1!.val < list2!.val {
                curAnswer.val = list1!.val
                list1 = list1?.next
            } else {
                curAnswer.val = list2!.val
                list2 = list2?.next
            }
            if list1 == nil && list2 == nil {
                break
            }
            curAnswer.next = ListNode()
            curAnswer = curAnswer.next!
        }
        return answer
    }
}