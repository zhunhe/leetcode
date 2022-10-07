class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var num = 1
        while num < n {
            if n % num != 0 {
                return false
            }
            num *= 3
        }
        return num == n ? true : false
    }
}