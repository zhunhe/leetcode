class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let h = board.count
        let w = board[0].count
        let word = Array(word)
        var isVisited = Array(repeating: Array(repeating: false, count: w), count: h)
        
        for y in 0 ..< h {
            for x in 0 ..< w {
                guard board[y][x] == word[0] else { continue }
                if dfs(0, y, x) {
                    return true
                }
            }
        }
        func dfs(_ depth: Int, _ y: Int, _ x: Int) -> Bool {
            guard depth < word.count else { return true }
            guard y >= 0 &&
                  x >= 0 &&
                  y < h &&
                  x < w &&
                  !isVisited[y][x] &&
                  board[y][x] == word[depth]
            else { return false }
            
            isVisited[y][x] = true
            var find = dfs(depth + 1, y - 1, x) ||
                       dfs(depth + 1, y + 1, x) ||
                       dfs(depth + 1, y, x - 1) ||
                       dfs(depth + 1, y, x + 1)
            isVisited[y][x] = false
            return find
        }
        return false
    }
}