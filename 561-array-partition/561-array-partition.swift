class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var sum = 0
        nums.sorted().enumerated().forEach {
            if $0 % 2 == 0 {
                sum += $1
            }
        }
        return sum
    }
}