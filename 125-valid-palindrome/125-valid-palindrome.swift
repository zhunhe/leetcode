class Solution {
    func isalnum(_ c: Character) -> Bool {
        if "a" <= c && c <= "z" {
            return true
        } else if "0" <= c && c <= "9" {
            return true
        }
        return false
    }
    func isPalindrome(_ s: String) -> Bool {
        var array = Array(s.lowercased())
        var left = 0
        var right = array.count - 1
        while left < right {
            if !isalnum(array[left]) {
                left += 1
            } else if !isalnum(array[right]) {
                right -= 1
            } else if array[left] != array[right] {
                return false
            } else {
                left += 1
                right -= 1
            }
        }
        return true
    }
}