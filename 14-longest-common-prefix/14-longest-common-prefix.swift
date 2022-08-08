class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sorted = strs.sorted{ $0.count < $1.count }
        var answer = ""
        for len in 0 ..< sorted[0].count {
            var idx = sorted[0].index(sorted[0].startIndex, offsetBy: len)
            let tmp = String(sorted[0][idx])
            for i in 1 ..< sorted.count {
                idx = sorted[i].index(sorted[i].startIndex, offsetBy: len)
                if tmp != String(sorted[i][idx]) {
                    return answer
                }
            }
            answer += tmp
        }
        return answer
    }
}