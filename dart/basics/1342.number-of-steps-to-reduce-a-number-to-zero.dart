/*
 * @lc app=leetcode id=1342 lang=dart
 *
 * [1342] Number of Steps to Reduce a Number to Zero
 */

// @lc code=start
class Solution {
  int numberOfSteps(num num) {
    int steps = 0;
    while (num > 0) {
      num % 2 == 0 ? num = num / 2 : num--;
      steps++;
    }
    return steps;
  }
}
// @lc code=end
