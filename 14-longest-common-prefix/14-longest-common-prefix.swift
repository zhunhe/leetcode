class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var answer = strs[0]
        for str in strs {
            answer = answer.commonPrefix(with: str)
        }
        return answer
    }
}