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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let start = ListNode()
        var list = head
        var ansCur = start
        var before = Int.min
        while let cur = list {
            if before != Int.min && before == cur.val {
                list = cur.next
                continue
            }
            ansCur.next = ListNode()
            ansCur = ansCur.next!
            ansCur.val = cur.val
            list = cur.next
            before = cur.val
        }
        return start.next
    }
}