class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let sArr = Array(s)
        let tArr = Array(t)
        var sHash: [Character: Int] = [:]
        var tHash: [Character: Int] = [:]
        for (index, c) in sArr.enumerated() {
            if sHash[c] == nil {
                sHash[c] = index
            }
        }
        for (index, c) in tArr.enumerated() {
            if tHash[c] == nil {
                tHash[c] = index
            }
        }
        for index in 0 ..< sArr.count {
            if sHash[sArr[index]] != tHash[tArr[index]] {
                return false
            }
        }
        return true
    }
}