class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var answer = 0
        var count = 0
        for num in nums {
            if num == 0 {
                answer = max(answer, count)
                count = 0
            } else {
                count += 1
            }
        }
        return max(answer, count)
    }
}