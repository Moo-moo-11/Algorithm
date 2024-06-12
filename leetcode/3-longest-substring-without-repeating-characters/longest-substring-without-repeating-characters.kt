class Solution {
    fun lengthOfLongestSubstring(s: String): Int {
        val map: MutableMap<Char, Int> = mutableMapOf()
        var answer = 0
        var left = 0
        var right = 0

        for (char in s) {
            if (left <= map.getOrDefault(char, -1)) {
                left = map[char]!! + 1
            } else {
                answer = answer.coerceAtLeast(right - left + 1)
            }

            map[char] = right

            right++
        }

        return answer   
    }
}