class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        // let nums = nums.sorted(by: >)
        var v = Array(repeating: 0, count: 102)
        for num in nums {
            v[num > 100 ? 100 : num] += 1
        }
        for i in stride(from: 100, to: 0, by: -1) {
            v[i] += v[i + 1]
            if v[i] == i {
                return i
            }
        }
        return -1
    }
}