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
        func recursion(_ p: TreeNode?, _ q: TreeNode!) -> Bool {
            if p == nil && q == nil { return true }
            guard let first = p else { return false }
            guard let second = q else { return false }
            if first.val != second.val { return false }
            if !recursion(first.left, second.left) { return false }
            if !recursion(first.right, second.right) { return false }
            return true
        }
        return recursion(p, q)
    }
}