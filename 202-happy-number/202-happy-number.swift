class Solution {
    func isHappy(_ n: Int) -> Bool {
        var number: Int
        if n < 10 {
            number = n * n
        } else {
            number = n
        }
        while number != 1 {
            print(number)
            var tmp = number
            var next = 0
            while tmp > 0 {
                next += (tmp % 10) * (tmp % 10)
                tmp /= 10
            }
            number = next
            if number == 4 {
                return false
            }
        }
        return true
    }
}