class Solution {
    fun kClosest(points: Array<IntArray>, k: Int): Array<IntArray> {
        val priorityQue: Queue<Pair<Int,IntArray>> = PriorityQueue(compareBy { it.first })

        for (point in points) {
            val distance = point[0]*point[0] + point[1]*point[1]

            priorityQue.add(distance to point)
        }

        val answer = Array(k) { IntArray(2) }
        for (i in 0..<k) {
            answer[i] = priorityQue.poll().second
        }

        return answer
    }
}