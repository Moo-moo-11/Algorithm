class Solution {
    fun arrayPairSum(nums: IntArray): Int {
        var answer = 0
        
        nums.sort()

        for ((index, number) in nums.withIndex()){
            if (index%2 == 0) answer += number
        }

        return answer
    }
}