class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        var nums = nums
        var permutations = [[Int]]()
        func dfs(_ pos: Int) {
            if pos == nums.count {
                permutations.append(nums)
                return
            }
            for i in pos ..< nums.count {
                nums.swapAt(i, pos)
                dfs(pos + 1)
                nums.swapAt(i, pos)
            }
        }
        dfs(0)
        return permutations
    }
}