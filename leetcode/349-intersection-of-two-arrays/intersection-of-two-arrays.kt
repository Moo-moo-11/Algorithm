class Solution {
    fun intersection(nums1: IntArray, nums2: IntArray): IntArray {
        val answer = mutableSetOf<Int>()

        nums1.sort()

        for (number in nums2) {
            if (nums1.binarySearch(number) >= 0) answer.add(number)
        }

        return answer.toIntArray()
    }
}