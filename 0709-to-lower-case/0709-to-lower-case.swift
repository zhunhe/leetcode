class Solution {
    func toLowerCase(_ s: String) -> String {
        var answer = ""
        for c in s {
            if let upper = c.asciiValue, 65 <= upper && upper <= 90 {
                answer.append(Character(UnicodeScalar(upper + 32)))
            } else {
                answer.append(c)
            }
        }
        return answer
    }
}