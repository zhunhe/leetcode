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
    var set = Set<Int>()
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let cur = root else {
            return false
        }
        if set.contains(k - cur.val) {
            return true
        }
        set.insert(cur.val)
        return findTarget(cur.left, k) || findTarget(cur.right, k)
    }
}