class Solution {
    fun longestCommonPrefix(strs: Array<String>): String {

        var a = 201
        for (item in strs) {
            if (a > item.length) {
                a = item.length
            }
        }

        var pre = ""

        if (a == 0) {
            return pre
        } else {

            loop1@ for (i in 0..a - 1) {

                val c = strs[0].substring(0, i + 1)

                for (item in strs) {
                    if (c != item.substring(0, i + 1)) {
                        break@loop1
                    }
                }

                pre = c
            }

            return pre
        }
    }
}