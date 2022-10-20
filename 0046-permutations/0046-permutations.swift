class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        var permutations = [[Int]]()
        var visited = Array(repeating: false, count: nums.count)
        var tmp = [Int]()

        func dfs() {
            if tmp.count == nums.count {
                permutations.append(tmp)
                return
            }
            for (idx, num) in nums.enumerated() {
                if visited[idx] { continue }
                visited[idx] = true
                tmp.append(num)
                dfs()
                visited[idx] = false
                tmp.removeLast()   
            }
        }
        dfs()
        return permutations
    }
}