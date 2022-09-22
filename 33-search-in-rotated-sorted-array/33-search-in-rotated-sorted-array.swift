class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        for (index, num) in nums.enumerated() {
            if num == target {
                return index
            }
        }
        return -1
    }
}