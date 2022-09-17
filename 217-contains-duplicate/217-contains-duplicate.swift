class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for index in 0 ..< nums.count {
            if dict[nums[index]] == nil {
                dict[nums[index]] = index
            } else {
                return true
            }
        }
        return false
    }
}