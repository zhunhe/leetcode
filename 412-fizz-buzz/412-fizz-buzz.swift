class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var array = [String](repeating: "", count: n)
        for i in 0 ..< n {
            let num = i + 1
            if num.isMultiple(of: 15) {
                array[i] = "FizzBuzz"
            } else if num.isMultiple(of: 3) {
                array[i] = "Fizz"
            } else if num.isMultiple(of: 5) {
                array[i] = "Buzz"
            } else {
                array[i] = String(num)
            }
        }
        return array
    }
}