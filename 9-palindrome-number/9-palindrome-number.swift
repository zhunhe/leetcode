class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if String(x) == String(String(x).reversed()) {
            return true
        }
        return false
    }
}