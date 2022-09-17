class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var s = s.sorted()
        var t = t.sorted()
        return s == t
    }
}