class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var hash = [Character: Int]()
        for c in s {
            hash[c] = (hash[c] ?? 0) + 1
        }
        for (index, c) in s.enumerated() {
            if let count = hash[c], count == 1 {
                return index
            }
        }
        return -1
    }
}