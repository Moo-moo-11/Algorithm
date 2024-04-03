class Solution {
    fun longestCommonPrefix(strs: Array<String>): String {

        var a = strs[0].length
        for (item in strs) {
            if (a > item.length) {
                a = item.length
            }
        }

        var pre = ""

        loop@ for (i in 0..a - 1) {
            val c = strs[0].substring(0, i + 1)
            for (item in strs) {
                if (c != item.substring(0, i + 1)) {
                    break@loop
                }
            }
            pre = c
        }
        return pre
    }
}
