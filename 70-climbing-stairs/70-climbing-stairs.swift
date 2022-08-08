class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 { return n }
        var before2 = 2
        var before1 = 3
        var answer = 5
        for _ in 4 ... n {
            answer = before2 + before1
            before2 = before1
            before1 = answer
        }
        return answer
    }
}