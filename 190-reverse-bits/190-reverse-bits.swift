class Solution {
    func reverseBits(_ n: Int) -> Int {
        var s = ""
        var idx = 0
        var n = n
        while (n > 0) {
            if n & 1 == 1 {
                s += "1"
            } else {
                s += "0"
            }
            idx += 1
            n /= 2
        }
        while s.count < 32 {
            s += "0"
        }
        return Int(s, radix: 2)!
    }
}