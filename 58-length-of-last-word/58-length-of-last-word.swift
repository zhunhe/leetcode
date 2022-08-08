class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s.count == 1 { return 1 }
        let ss = s.split(separator: " ")
        return ss[ss.count - 1].count
    }
}