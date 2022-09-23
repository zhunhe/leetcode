class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let word = Array(word)
        var isVisited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
        
        for y in 0 ..< board.count {
            for x in 0 ..< board[0].count {
                guard board[y][x] == word[0] else { continue }
                if dfs(board, &isVisited, word, 0, y, x) {
                    return true
                }
            }
        }
        return false
    }
    
    func dfs(_ board: [[Character]], _ isVisited: inout [[Bool]], _ word: [Character], _ depth: Int, _ y: Int, _ x: Int) -> Bool {
            guard depth < word.count else { return true }
            guard y >= 0 &&
                  x >= 0 &&
                  y < board.count &&
                  x < board[0].count &&
                  !isVisited[y][x] &&
                  board[y][x] == word[depth]
            else { return false }
            
            isVisited[y][x] = true
            var find = dfs(board, &isVisited, word, depth + 1, y - 1, x) ||
                       dfs(board, &isVisited, word, depth + 1, y + 1, x) ||
                       dfs(board, &isVisited, word, depth + 1, y, x - 1) ||
                       dfs(board, &isVisited, word, depth + 1, y, x + 1)
            isVisited[y][x] = false
            return find
        }
}