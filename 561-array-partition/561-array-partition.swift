class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        var answer = 0
        nums.enumerated().forEach {
            if $0 % 2 == 0 {
                answer += $1
            }
        }
        return answer
    }
}