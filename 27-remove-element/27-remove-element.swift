class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else { return 0 }
        var idx = 0;
        while idx < nums.count {
            while idx < nums.count && nums[idx] == val {
                nums.remove(at: idx)
            }
            idx += 1
        }
        return nums.count
    }
}