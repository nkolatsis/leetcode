package basics;

/*
 * @lc app=leetcode id=1672 lang=java
 *
 * [1672] Richest Customer Wealth
 */

// @lc code=start

import java.util.stream.IntStream;

class Solution {
    public int maximumWealth(int[][] accounts) {
        int largest = 0;
        for (int[] account : accounts) {
            int sum = IntStream.of(account).sum();
            if (sum > largest) {
                largest = sum;
            }
        }
        return largest;
    }
}
// @lc code=end
