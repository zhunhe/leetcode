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
    func tree2str(_ root: TreeNode?) -> String {
        var result = ""

        func dfs(_ node: TreeNode?) {
            guard let cur = node else {
                return
            }
            result += String(cur.val)
            if cur.left != nil || cur.right != nil {
                result += "("
                dfs(cur.left)
                result += ")"
            }
            if cur.right != nil {
                result += "("
                dfs(cur.right)
                result += ")"
            }
        }
        dfs(root)
        return result
    }
}