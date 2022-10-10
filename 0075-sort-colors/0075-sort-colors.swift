class Solution {
    func sortColors(_ nums: inout [Int]) {
        var count = (zero: 0, one: 0, two: 0)
        count.zero = nums.filter { $0 == 0 }.count
        count.one = nums.filter { $0 <= 1 }.count
        count.two = nums.filter { $0 <= 2 }.count
        for i in 0 ..< count.zero { nums[i] = 0 }
        for i in count.zero ..< count.one { nums[i] = 1 }
        for i in count.one ..< count.two { nums[i] = 2 }
    }
}