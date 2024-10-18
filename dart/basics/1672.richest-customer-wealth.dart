/*
 * @lc app=leetcode id=1672 lang=dart
 *
 * [1672] Richest Customer Wealth
 */

// @lc code=start
class Solution {
  int maximumWealth(List<List<int>> accounts) {
    return accounts.fold(0, (int previousWealth, List<int> customerAccounts) {
      int customerWealth = customerAccounts.reduce((int a, int b) => a + b);
      return previousWealth > customerWealth ? previousWealth : customerWealth;
    });
  }

  /* Smelly 1liner
  import 'dart:math';
  int maximumWealth(List<List<int>> accounts) => accounts.fold(0, (int previousWealth, List<int> customerAccounts) => max(previousWealth, customerAccounts.reduce((int a, int b) => a + b)));
  */

  /* original solution
  int maximumWealth(List<List<int>> accounts) {
    List<int> customerWealth = [];
    for (List<int> customerAccounts in accounts) {
      int summedWealth = customerAccounts.reduce((int a, int b) => a + b);
      customerWealth.add(summedWealth);
    }
    int maxWealth = customerWealth.reduce((int a, int b) => a > b ? a : b);
    return maxWealth;
  }
  */
}
// @lc code=end
