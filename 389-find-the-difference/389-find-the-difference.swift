class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sCount = [Int](repeating: 0, count: 26)
        var tCount = [Int](repeating: 0, count: 26)
        let a = Int(Character("a").asciiValue!)
        for c in s.utf8 {
            sCount[Int(c) - a] += 1
        }
        for c in t.utf8 {
            tCount[Int(c) - a] += 1
        }
        var answer: Character = "a"
        for index in 0 ... 26 {
            if sCount[index] != tCount[index] {
                answer = Character(UnicodeScalar(index + 97)!)
                break
            }
        }
        return answer
    }
}