class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = Int.max
        var answer = 0
        for price in prices {
            buy = min(buy, price)
            answer = max(answer, price - buy)
        }
        return answer
    }
}