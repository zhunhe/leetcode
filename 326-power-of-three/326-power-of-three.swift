class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var n = n
        while n > 1 {
            if n % 3 != 0 {
                return false
            }
            n /= 3
        }
        return true
    }
}