/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var answer = true
        func recursion(_ p: TreeNode?, _ q: TreeNode!) {
            if !answer { return }
            if p == nil && q == nil { return }
            guard let first = p else {
                answer = false
                return
            }
            guard let second = q else {
                answer = false
                return
            }
            if first.val != second.val {
                answer = false
                return
            }
            recursion(first.left, second.left)
            recursion(first.right, second.right)
        }
        recursion(p, q)
        return answer
    }
}