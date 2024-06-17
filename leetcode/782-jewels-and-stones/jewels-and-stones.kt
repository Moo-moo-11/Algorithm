class Solution {
    fun numJewelsInStones(jewels: String, stones: String): Int {
        var answer = 0
        val set = hashSetOf<Char>()

        for (jewel in jewels) 
        set.add(jewel)

        for (stone in stones) 
        if(set.contains(stone)) answer++

        return answer
    }
}