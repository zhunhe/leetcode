class Solution {
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {
        var nums = nums
        for _ in 0..<nums.count - k {
            let min = nums.min()!
            let lastIndex = nums.lastIndex(of: min)!
            nums.remove(at: lastIndex)
        }
        return nums
    }
}