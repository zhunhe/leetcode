class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        let len = s.count
        var arr = [Int](repeating: 0, count: len + 1)
        var i = 0
        var d = len
        for (index, c) in s.enumerated() {
            if c == "I" {
                arr[index] = i
                i += 1
            } else {
                arr[index] = d
                d -= 1
            }
        }
        arr[len] = i
        return arr
    }
}