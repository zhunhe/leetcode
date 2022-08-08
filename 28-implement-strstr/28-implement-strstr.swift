class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.contains(needle) else { return -1 }
        guard needle != "" else { return 0 }
        for i in 0 ... haystack.count - needle.count {
            let startIdx:String.Index = haystack.index(haystack.startIndex, offsetBy: i)
            let endIdx:String.Index = haystack.index(startIdx, offsetBy: needle.count)
            if haystack[startIdx ..< endIdx] == needle {
                return i
            }
        }
        return -1
    }
}