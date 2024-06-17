class Solution {
    fun numJewelsInStones(jewels: String, stones: String): Int {
        var answer = 0
        val set = jewels.toCharArray()

        for (stone in stones) 
        if(set.contains(stone)) answer++

        return answer
    }
}