class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.filter { $0 == 0 }.count
        nums = nums.filter { $0 != 0 }
        nums.append(contentsOf: Array(repeating: 0, count: count))
    }
}