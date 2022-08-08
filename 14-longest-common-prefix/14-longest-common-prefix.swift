class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else { return strs[0] }
        var answer = strs[0]
        for str in strs {
            answer = answer.commonPrefix(with: str)
        }
        return answer
    }
}