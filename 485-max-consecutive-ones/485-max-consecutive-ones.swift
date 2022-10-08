class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var answer = 0
        var count = 0
        let len = nums.count
        for i in 0 ..< len {
            if nums[i] == 0 {
                count = 0
            } else {
                count += 1
                answer = max(answer, count)
            }
        }
        return answer
    }
}