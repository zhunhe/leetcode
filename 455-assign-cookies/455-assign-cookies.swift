class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var answer = 0
        var children = g.sorted()
        var cookies = s.sorted()
        var childIndex = 0
        for cookie in cookies where childIndex < children.count && children[childIndex] <= cookie {
            answer += 1
            childIndex += 1
        }
        return answer
    }
}