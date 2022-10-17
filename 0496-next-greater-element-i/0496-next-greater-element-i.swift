class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hash = [Int: Int]()
        var stack = [Int]()
        for num2 in nums2 {
            while !stack.isEmpty && stack.last! < num2 {
                hash[stack.removeLast()] = num2
            }
            stack.append(num2)
        }
        return nums1.map { hash[$0] ?? -1 }
    }
}