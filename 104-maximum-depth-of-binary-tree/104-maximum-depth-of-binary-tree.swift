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
    func maxDepth(_ root: TreeNode?) -> Int {
        var answer = 0
        func dfs(_ node: TreeNode?, _ count: Int) {
            answer = max(answer, count)
            guard let cur = node else { return }
            dfs(cur.left, count + 1)
            dfs(cur.right, count + 1)
        }
        dfs(root, 0)
        return answer
    }
}