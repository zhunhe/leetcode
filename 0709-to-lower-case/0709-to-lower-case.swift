class Solution {
    func toLowerCase(_ s: String) -> String {
        var answer = ""
        for c in s {
            if let upper = c.asciiValue, "A" <= c && c <= "Z" {
                answer.append(Character(UnicodeScalar(upper + 32)))
            } else {
                answer.append(c)
            }
        }
        return answer
    }
}