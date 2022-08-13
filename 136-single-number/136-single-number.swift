class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var answer = 0
        for num in nums {
            answer ^= num
        }
        return answer
    }
}