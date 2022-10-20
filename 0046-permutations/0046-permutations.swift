class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        var permutations = [[Int]]()
        var visited = Array(repeating: false, count: nums.count)

        func dfs(_ tmp: [Int], _ visited: [Bool]) {
            var tmp = tmp
            var visited = visited
            if tmp.count == nums.count {
                permutations.append(tmp)
                return
            }
            for (idx, num) in nums.enumerated() {
                if visited[idx] { continue }
                visited[idx] = true
                tmp.append(num)
                dfs(tmp, visited)
                visited[idx] = false
                tmp.removeLast()   
            }
        }
        dfs([], visited)
        return permutations
    }
}