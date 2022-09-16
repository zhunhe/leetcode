class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var sum = 0
        for (index, num) in nums.sorted(by: <).enumerated() where index % 2 == 0 {
            sum += num
        }
        return sum
    }
}