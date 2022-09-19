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
    var arr = [[Int]]()
    
    func getAnswer(_ root: TreeNode?, _ level: Int) {
        guard let cur = root else {
            return
        }
        if level < arr.count {
            arr[level].append(cur.val)
        } else {
            arr.append([cur.val])
        }
        getAnswer(cur.left, level + 1)
        getAnswer(cur.right, level + 1)
    }
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        getAnswer(root, 0)
        return arr
    }
}