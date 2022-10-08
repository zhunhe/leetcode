class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var array = [String]()
        for num in 1 ... n {
            if num.isMultiple(of: 15) {
                array.append("FizzBuzz")
            } else if num.isMultiple(of: 3) {
                array.append("Fizz")
            } else if num.isMultiple(of: 5) {
                array.append("Buzz")
            } else {
                array.append(String(num))
            }
        }
        return array
    }
}