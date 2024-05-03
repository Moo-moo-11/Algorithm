class Solution {
    fun longestPalindrome(s: String): Int {
        var answer = 0
        val counts:MutableMap<Char,Int> = mutableMapOf()
        var oddNumbs = 0

        for (c in s) {
            counts[c] = counts.getOrDefault(c,0) + 1
        }

        for (char in counts) {
            if (char.value % 2 == 0) {
                answer += char.value
            } else {
                answer += (char.value - 1)
                oddNumbs += 1
            }
        }

        if (oddNumbs > 0) answer += 1

        return answer
    }
}