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
    func isBalanced(_ root: TreeNode?) -> Bool {
        func dfs(_ node: TreeNode?) -> Int {
            guard let cur = node else { return 0 }
            let leftDepth = dfs(cur.left)
            if leftDepth == -1 { return -1 }
            let rightDepth = dfs(cur.right)
            if rightDepth == -1 { return -1 }
            if abs(leftDepth - rightDepth) > 1 { return -1 }
            return max(leftDepth, rightDepth) + 1
        }
        return dfs(root) != -1
    }
}