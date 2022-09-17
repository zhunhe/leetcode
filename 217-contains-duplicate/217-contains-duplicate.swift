class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for index in 0 ..< nums.count {
            if let find = dict[nums[index]] {
                return true
            }
            dict[nums[index]] = index
        }
        return false
    }
}