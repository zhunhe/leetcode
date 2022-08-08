class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        guard let ss = s.split(separator: " ").last else { return 0 }
        return ss.count
    }
}