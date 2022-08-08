class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 4 { return n }
        var arr = [Int](repeating: 0, count: n + 1)
        for i in 0 ..< 4 {
            arr[i] = i
        }
        for i in 4 ... n {
            arr[i] = arr[i - 2] + arr[i - 1]
        }
        return arr[n]
    }
}