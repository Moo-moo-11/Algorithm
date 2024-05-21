class Solution {
    fun maxProfit(prices: IntArray): Int {
        var maxProfit = 0
        var minPrice = prices[0]

        for (price in prices) {
            maxProfit = (price-minPrice).coerceAtLeast(maxProfit)
            minPrice = price.coerceAtMost(minPrice)
        }

    return maxProfit

    }
}