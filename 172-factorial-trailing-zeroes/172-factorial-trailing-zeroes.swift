class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var countFive = 0
        var divider = 5
        while divider <= n {
            countFive += n / divider
            divider *= 5
        }
        return countFive
    }
}