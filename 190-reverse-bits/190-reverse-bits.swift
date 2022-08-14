class Solution {
    func reverseBits(_ n: Int) -> Int {
        var s = ""
        var n = n
        while (n > 0) {
            if n & 1 == 1 {
                s += "1"
            } else {
                s += "0"
            }
            n /= 2
        }
        while s.count < 32 {
            s += "0"
        }
        return Int(s, radix: 2)!
    }
}