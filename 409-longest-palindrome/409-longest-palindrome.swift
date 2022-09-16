class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var hash: [Character: Int] = [:]
        var hasOdd = false
        var answer = 0
        for c in s {
            hash[c] = 1 + (hash[c] ?? 0)
        }
        for (_, value) in hash {
            if value % 2 == 1 {
                hasOdd = true
                answer += (value - 1)
            } else {
                answer += value
            }
        }
        return hasOdd ? answer + 1 : answer
    }
}