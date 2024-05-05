class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        val maps:MutableMap<Int,Int> = mutableMapOf()

        for ((i,num) in nums.withIndex()) {
            if (maps.containsKey(target-num)) {
                return intArrayOf(maps[target-num]!!,i)
            }
            
            maps[num] = i
        }
        return intArrayOf(0,0)
    }
}