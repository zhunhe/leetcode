class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var w = 1
        var answer: [Int] = [area, 1]

        while w * w <= area {
            if area.isMultiple(of: w) && w > answer[1] {
                answer[0] = area / w
                answer[1] = w
            }
            w += 1
        }
        return answer
    }
}