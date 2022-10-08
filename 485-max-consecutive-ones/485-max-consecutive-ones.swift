class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var answer = 0
        var count = 0
        for num in nums {
            if num == 0 {
                count = 0
            } else {
                count += 1
                answer = max(answer, count)
            }
        }
        return answer
    }
}