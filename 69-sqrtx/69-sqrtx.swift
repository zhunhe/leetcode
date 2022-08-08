class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 { return x }
        var answer = 0
        var left = 0
        var right = x / 2
        while left <= right {
            var mid: Int = (left + right) / 2
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