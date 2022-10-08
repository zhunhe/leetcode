class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max = [Int](repeating: Int.min, count: 3)
        var nums = Set(nums)
        for num in nums {
            if num > max[0] {
                max[2] = max[1]
                max[1] = max[0]
                max[0] = num
            } else if num > max[1] {
                max[2] = max[1]
                max[1] = num
            } else if num > max[2] {
                max[2] = num
            }
        }
        return max[2] != Int.min ? max[2] : max[0]
    }
}