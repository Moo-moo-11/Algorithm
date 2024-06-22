class Solution {
    fun intersection(nums1: IntArray, nums2: IntArray): IntArray {
        val answer = mutableSetOf<Int>()

        for (number in nums2) {
            if (nums1.contains(number)) answer.add(number)
        }

        return answer.toIntArray()
    }
}