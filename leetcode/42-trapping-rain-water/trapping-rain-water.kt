class Solution {
    fun trap(height: IntArray): Int {
        var answer = 0
        var left = 0
        var right = height.size-1
        var leftMax = height[left]
        var rightMax = height[right]

        while (left < right) {
            leftMax = height[left].coerceAtLeast(leftMax)
            rightMax = height[right].coerceAtLeast(rightMax)

            if (leftMax <= rightMax) {
                answer += leftMax - height[left]
                left += 1
            } else {
                answer += rightMax - height[right]
                right -= 1
            }
        }

        return answer
    }
}