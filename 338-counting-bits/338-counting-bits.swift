class Solution {
    func countBits(_ n: Int) -> [Int] {
        var array = Array(repeating: 0, count: n + 1)
        for i in 0 ..< n + 1 {
            array[i] = String(i, radix: 2).filter{$0 == "1"}.count
        }
        return array
    }
}