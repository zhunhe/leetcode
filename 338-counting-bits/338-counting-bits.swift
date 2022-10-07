class Solution {
    func countBits(_ n: Int) -> [Int] {
        var array = [Int](repeating: 0, count: n + 1)
        for i in 0 ..< n + 1 {
            array[i] = array[i / 2] + i % 2
        }
        return array
    }
}