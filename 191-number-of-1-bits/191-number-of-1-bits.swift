class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var answer = 0
        var n = n
        while n > 0 {
            answer += (n & 1 == 1) ? 1 : 0
            n >>= 1
        }
        return answer
    }
}