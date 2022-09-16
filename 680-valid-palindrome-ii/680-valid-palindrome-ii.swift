class Solution {
    func isPalindrome(_ arr: [Character], _ start: Int, _ end: Int) -> Bool {
        var start = start
        var end = end
        while start < end {
            if arr[start] != arr[end] {
                return false
            }
            start += 1
            end -= 1
        }
        return true
    }
    
    func validPalindrome(_ s: String) -> Bool {
        var isChanged = false
        var arr = Array(s)
        var left = 0, right = arr.count - 1
        while left < right {
            if arr[left] == arr[right] {
                left += 1
                right -= 1
            } else if !isChanged && isPalindrome(arr, left + 1, right) {
                left += 1
                isChanged = true
            } else if !isChanged && isPalindrome(arr, left, right - 1) {
                right -= 1
                isChanged = true
            } else {
                return false
            }
        }
        return true
    }
}