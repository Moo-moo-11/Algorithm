class Solution {
    fun dailyTemperatures(temperatures: IntArray): IntArray {
        val stack = ArrayDeque<Int>()
        val answer = IntArray(temperatures.size)

        for (i in temperatures.indices) {
            while (stack.isNotEmpty() && temperatures[i] > temperatures[stack.last()]){
                val last = stack.removeLast()
                answer[last] = i - last
            }
            stack.add(i)
        }

        return answer
    }
}