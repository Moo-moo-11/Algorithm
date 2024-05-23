class Solution {
    fun productExceptSelf(nums: IntArray): IntArray {
        val answer = IntArray(nums.size)

        var leftProduct = 1
        for (i in nums.indices) {
            answer[i] = leftProduct
            leftProduct *= nums[i]
        }

        var rightProduct = 1
        for (j in nums.indices.reversed()) {
            answer[j] *= rightProduct
            rightProduct *= nums[j]
        }

        return answer
    }
}