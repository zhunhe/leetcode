class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var count = [Character: Int]()
        var firstIndex = [Character: Int]()
        for (index, c) in s.enumerated() {
            count[c] = (count[c] ?? 0) + 1
            if firstIndex[c] == nil {
                firstIndex[c] = index
            }
        }
        let unique = count.filter { $0.value == 1 }
        if unique.count == 0 {
            return -1
        }
        var answer = s.count
        for (key, _) in unique {
            answer = min(answer, firstIndex[key]!)
        }
        return answer
    }
}