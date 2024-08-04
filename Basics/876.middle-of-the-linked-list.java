package Basics;

import java.util.ArrayList;
import UtilFunctions.ListNode;

/*
 * @lc app=leetcode id=876 lang=java
 *
 * [876] Middle of the Linked List
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode middleNode(ListNode head) {
        ArrayList<ListNode> nodedList = new ArrayList<>();

        while (true) {
            nodedList.add(head);
            if (head.next != null) {
                head = head.next;
            } else {
                break;
            }
        }
        
        int size = nodedList.size();
        int middle = size % 2 == 0 ? size / 2 : (int) Math.ceil(size/2);

        return nodedList.get(middle);

    }
}
// @lc code=end

