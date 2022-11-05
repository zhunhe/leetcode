class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var hashSet = Set<String>()

        for y in 0 ..< board.count {
            for x in 0 ..< board[0].count {
                if board[y][x] == "." { continue }
                for val in ["r\(y)\(board[y][x])", "c\(x)\(board[y][x])", "r\(y/3)c\(x/3)\(board[y][x])"] {
                    if hashSet.contains(val) {
                        return false
                    } else {
                        hashSet.insert(val)
                    }
                }
            }
        }
        return true
    }
}