class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var carry = false
        var answer = Array(digits.reversed())
        for i in answer.indices {
            if answer[i] == 9 {
                answer[i] = 0
                carry = true
                continue
            }
            answer[i] += 1
            carry = false
            break
        }
        if carry {
            answer.append(1)
        }
        return Array(answer.reversed())
    }
}