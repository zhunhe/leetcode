class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let s = String(x)
        let reversed = String(String(x).reversed())
        if s == reversed {
            return true
        }
        return false
    }
}