class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var nums = nums.sorted(by: <)
        var answer = 0
        for (index, num) in nums.enumerated() where index % 2 == 0 {
            answer += num
        }
        return answer
    }
}