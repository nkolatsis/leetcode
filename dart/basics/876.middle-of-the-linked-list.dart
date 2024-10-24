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
import 'dart:math';

void main() {
  var util = Util();
  ListNode head = util.generateListNodes();
  util.printAllNodes(head);
  print('#####');
  ListNode? middleNode = Solution().middleNode(head);
  util.printAllNodes(middleNode);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? currentNode = head;

    // get listNode chain length
    int counter = 0;
    while (true) {
      counter++;
      if (currentNode?.next != null) {
        currentNode = currentNode?.next;
      } else {
        break;
      }
    }

    int middle = counter % 2 == 0 ? counter ~/ 2 + 1 : (counter / 2).ceil();

    for (int i = 1; i < middle; i++) {
      head = head?.next;
    }
    return head;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Util {
  ListNode generateListNodes() {
    var rng = Random();

    ListNode head = ListNode(rng.nextInt(10));
    ListNode prevNode = head;
    for (int i = 0; i < 4; i++) {
      ListNode newNode = ListNode(rng.nextInt(10));
      prevNode.next = newNode;
      prevNode = newNode;
    }
    return head;
  }

  void printAllNodes(ListNode? head) {
    while (true) {
      print(head?.val);
      if (head?.next != null) {
        head = head?.next;
      } else {
        break;
      }
    }
  }
}

// @lc code=end

