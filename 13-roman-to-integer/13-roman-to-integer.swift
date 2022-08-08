class Solution {
    func romanToInt(_ s: String) -> Int {
        var answer = 0
        var before: Character = " "
        for c in s {
            switch c {
                case "I": answer += 1
                case "V":
                    if before == "I" {
                        answer += 3
                    } else {
                        answer += 5
                    }
                case "X":
                    if before == "I" {
                        answer += 8
                    } else {
                        answer += 10                        
                    }
                case "L":
                    if before == "X" {
                        answer += 30
                    } else {
                        answer += 50
                    }
                case "C":
                    if before == "X" {
                        answer += 80
                    } else {
                        answer += 100
                    }
                case "D":
                    if before == "C" {
                        answer += 300
                    } else {
                        answer += 500
                    }
                case "M":
                    if before == "C" {
                        answer += 800
                    } else {
                        answer += 1000                        
                    }
                default: answer += 0
            }
            before = c
        }
        return answer
    }
}