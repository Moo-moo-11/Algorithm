import java.util.ArrayDeque

class Solution {
    fun isValid(s: String): Boolean {
        val stack= ArrayDeque<Char>()
        val map = mapOf(')' to '(', '}' to '{', ']' to '[')

        for (i in s.indices) {
            if(!map.containsKey(s[i])) {
                stack.push(s[i])
            } else if (stack.isEmpty() || map[s[i]] != stack.pop()) {
                return false
            }
        }
        return stack.size == 0
    }
}