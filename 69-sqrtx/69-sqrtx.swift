class Solution {
    func mySqrt(_ x: Int) -> Int {
        var answer = 0
        for i in 0 ... x {
            if i * i <= x {
                answer = i
                continue
            }
            break
        }
        return answer
    }
}