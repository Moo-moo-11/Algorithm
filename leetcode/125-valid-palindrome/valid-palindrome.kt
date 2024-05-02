class Solution {
    fun isPalindrome(s: String): Boolean {
        var start = 0
        var end = s.length - 1
        while (end > start) {
            when {
                !Character.isLetterOrDigit(s[start]) -> start++
                !Character.isLetterOrDigit(s[end]) -> end--
                s[start].lowercase() == s[end].lowercase() -> {start++ ; end--}
                else -> return false
            }
        }
        return true
    }
}