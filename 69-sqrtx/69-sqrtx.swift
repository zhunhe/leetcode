class Solution {
    func mySqrt(_ x: Int) -> Int {
        var answer = 0
        var left = 0
        var right = Int(x / 2 + 1)
        while left <= right {
            var mid = Int((left + right) / 2)
            if mid * mid <= x {
                answer = mid
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return answer
    }
}