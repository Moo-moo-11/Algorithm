class Solution {
    fun removeDuplicateLetters(s: String): String {
        val added: HashMap<Char,Boolean> = hashMapOf()
        val count: HashMap<Char,Int> = hashMapOf()
        val stack = ArrayDeque<Char>()

        for (c in s) {
            count[c] = count.getOrDefault(c, 0) + 1
        }

        for (c in s) {

            count[c] = count[c]!! - 1

            if(added[c] == true) continue

            while (stack.isNotEmpty() && stack.last() > c && count[stack.last()]!! > 0) {
                added[stack.removeLast()] = false
            }

            stack.add(c)

            added[c] = true
        }

        val sb = StringBuilder()
        while (stack.isNotEmpty()) {
            sb.append(stack.removeFirst())
        }
        return String(sb)
    }
}