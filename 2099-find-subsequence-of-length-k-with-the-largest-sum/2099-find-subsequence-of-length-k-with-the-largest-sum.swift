class Solution {
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {
        nums
        .enumerated()
        .sorted { $0.element > $1.element }
        .prefix(k)
        .sorted { $0.offset < $1.offset }
        .map { $0.element }
    }
}