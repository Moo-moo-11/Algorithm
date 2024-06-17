class Solution {
    fun numJewelsInStones(jewels: String, stones: String): Int {
        var answer = 0

        for (stone in stones) 
        if(jewels.contains(stone)) answer++

        return answer
    }
}