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
    fun isPalindrome(head: ListNode?): Boolean {
        var fast = head
        var slow = head
        
        while(fast?.next != null) {
            fast = fast.next?.next
            slow = slow?.next
        }

        if (fast != null) {
            slow = slow?.next
        }

        var rev: ListNode? = null
        while (slow != null) {
            val next = slow.next
            slow.next = rev
            rev = slow
            slow = next
        }

        var node: ListNode? = head
        while(rev != null) {
            if(rev.`val` != node?.`val`) return false
            rev = rev.next
            node = node.next
        }

        return true
    }
}