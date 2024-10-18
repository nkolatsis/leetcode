/*
 * @lc app=leetcode id=1480 lang=dart
 *
 * [1480] Running Sum of 1d Array
 */

// @lc code=start
class Solution {
  List<int> runningSum(List<int> nums) {
    List<int> rs = [];
    int newNum = 0;
    for (int num in nums) {
      newNum += num;
      rs.add(newNum);
    }
    return rs;
  }
}

// @lc code=end
