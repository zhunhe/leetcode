class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var carry = false
        var answer = digits
        for i in (0 ..< answer.count).reversed() {
        // for i in stride(from: answer.count - 1, through: 0, by: -1) {
            if answer[i] == 9 {
                carry = true
                answer[i] = 0
                continue
            }
            carry = false
            answer[i] += 1
            break
        }
        if carry {
            answer.insert(1, at: 0)
        }
        return answer
    }
}