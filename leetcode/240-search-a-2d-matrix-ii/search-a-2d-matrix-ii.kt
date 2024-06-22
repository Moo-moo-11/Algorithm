class Solution {
    fun searchMatrix(matrix: Array<IntArray>, target: Int): Boolean {
        var answer = false
        var row = 0
        var col = matrix[0].size - 1

        while (true) {
            if (row >= matrix.size || col < 0 ) break

            when {
                matrix[row][col] == target -> {answer = true; break}
                matrix[row][col] > target -> col--
                else -> row++
            }
        }
        
        return answer
    }
}