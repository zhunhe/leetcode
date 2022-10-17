class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hash = [Int: Int]()
        for i in 0 ..< nums2.count {
            for j in i+1 ..< nums2.count {
                if nums2[j] > nums2[i] {
                    hash[nums2[i]] = nums2[j]
                    break
                }
            }
        }
        var answer = [Int]()
        for num1 in nums1 {
            answer.append(hash[num1] ?? -1)
        }
        return answer
    }
}