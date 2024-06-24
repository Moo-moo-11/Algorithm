class Solution {
    fun topKFrequent(nums: IntArray, k: Int): IntArray {
        val map: MutableMap<Int, Int> = mutableMapOf()

        for (n in nums) {
            map[n] = map.getOrDefault(n, 0) + 1
        }

        val priorityQueue = PriorityQueue<Pair<Int,Int>> { a, b -> b.second - a.second }

        for (key in map.keys) {
            priorityQueue.add(key to map[key]!!)
        }

        val answer = IntArray(k)
        for (i in 0..<k) {
            answer[i] = priorityQueue.poll().first
        }

        return answer
    }
}