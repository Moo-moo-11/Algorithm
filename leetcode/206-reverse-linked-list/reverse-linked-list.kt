/**
 * Example:
 * var li = ListNode(5)
 * var v = li.`val`
 * Definition for singly-linked list.
 * class ListNode(var `val`: Int) {
 *     var next: ListNode? = null
 * }
 */
class Solution {
    fun reverseList(head: ListNode?): ListNode? {
        var reverse: ListNode? = null
        var node = head
        while (node != null) {
            val next = node.next

            node.next = reverse
            reverse = node
            node = next
        } 
        return reverse
    }
}