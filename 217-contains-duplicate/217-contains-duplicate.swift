class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for index in 0 ..< nums.count {
            if dict[nums[index]] != nil {
                return true
            }
            dict[nums[index]] = index
        }
        return false
    }
}