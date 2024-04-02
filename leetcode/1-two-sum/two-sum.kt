class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        for (i in 0..nums.size-1) {
            for (j in i + 1..nums.size-1) {
                if (nums[i] + nums[j] == target) {
                    val ary: IntArray = intArrayOf(i, j)
                    return ary
                }
            }
        }
        val ary_2:IntArray = intArrayOf(0)
        return ary_2
    }
}
