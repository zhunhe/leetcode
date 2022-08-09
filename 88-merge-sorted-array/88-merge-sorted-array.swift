class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var idx1 = m - 1
        var idx2 = n - 1
        for i in (0 ..< m + n).reversed() {
            if idx1 < 0 || idx2 >= 0 && nums2[idx2] >= nums1[idx1] {
                nums1[i] = nums2[idx2]
                idx2 -= 1
            } else {
                nums1[i] = nums1[idx1]
                idx1 -= 1
            }
        }
    }
}