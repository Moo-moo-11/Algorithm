class Solution {
    fun topKFrequent(nums: IntArray, k: Int): IntArray {
        val map: MutableMap<Int, Int> = mutableMapOf()

        for (n in nums) {
            map[n] = map.getOrDefault(n, 0) + 1
        }

        val priorityQueue: PriorityQueue<IntArray> = PriorityQueue { a, b -> b[1] - a[1] }

        for (key in map.keys) {
            priorityQueue.add(intArrayOf(key, map[key]!!))
        }

        val answer = IntArray(k)
        for (i in 0..<k) {
            answer[i] = priorityQueue.poll()[0]
        }

        return answer    
    }
}