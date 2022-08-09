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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil { return false }
        var queueNode: [TreeNode?] = []
        var queueSum: [Int] = []
        queueNode.append(root)
        queueSum.append(targetSum)
        while !queueNode.isEmpty {
            let cur = queueNode[0]
            queueNode.removeFirst()
            let sum = queueSum[0]
            queueSum.removeFirst()
            if cur?.left == nil && cur?.right == nil && sum == cur!.val {
                return true
            }
            if cur?.left != nil {
                queueNode.append(cur?.left)
                queueSum.append(sum - cur!.val)
            }
            if cur?.right != nil {
                queueNode.append(cur?.right)
                queueSum.append(sum - cur!.val)
            }
        }
        return false
    }
}