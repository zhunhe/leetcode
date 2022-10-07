class Solution {
    func countBits(_ n: Int) -> [Int] {
        (0...n).map {$0.nonzeroBitCount}
    }
}