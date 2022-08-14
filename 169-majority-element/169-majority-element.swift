class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        var answer = 0
        var maxCount = 0
        for (key, value) in dict {
            if value > maxCount {
                maxCount = value
                answer = key
            }
        }
        return answer
    }
}