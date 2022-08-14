class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var answer = 0
        var n = n
        while n > 0 {
            if n & 1 == 1 {
                answer += 1
            }
            n >>= 1
        }
        return answer
    }
}