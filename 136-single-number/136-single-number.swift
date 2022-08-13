class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict.removeValue(forKey: num)
            }
        }
        var answer = 0
        for (key, value) in dict {
            answer = key
        }
        return answer
    }
}