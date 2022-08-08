class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target <= nums[0] { return 0 }
        if target > nums[nums.count - 1] { return nums.count }
        var answer = 0
        var left = 0
        var right = nums.count - 1
        while (left <= right) {
            let mid = Int((left + right) / 2)
            if nums[mid] >= target {
                answer = mid
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return answer
    }
}