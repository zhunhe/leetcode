class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack: [Character] = []
        for c in s {
            if stack.isEmpty {
                stack.append(c)
            } else if (stack.last == "(" && c == ")")
                || (stack.last == "{" && c == "}")
                || (stack.last == "[" && c == "]") {
                stack.popLast()
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty
    }
}
