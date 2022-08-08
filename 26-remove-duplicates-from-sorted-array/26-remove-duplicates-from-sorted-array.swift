class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let len = nums.count
        guard len > 1 else { return len }
        var idx = 0
        for num in nums where num != nums[idx] {
            idx += 1
            nums[idx] = num
        }
        return idx + 1
    }
}