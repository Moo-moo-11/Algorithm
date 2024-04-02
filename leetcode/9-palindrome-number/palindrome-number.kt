class Solution {
    fun isPalindrome(x: Int): Boolean {
        val numb = x.toString()
        val a = numb.length
        var b:String = numb[a-1].toString()
        for (i in a-2 downTo 0) {
            b = b + numb[i].toString()
        }

        if (numb == b) {
            return true
        } else {
            return false
        }
    }
}
