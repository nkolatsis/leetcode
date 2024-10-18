package basics;
/*
 * @lc app=leetcode id=1480 lang=java
 *
 * [1480] Running Sum of 1d Array
 */

// @lc code=start
class Solution {
    public int[] runningSum(int[] nums) {
        int[] runningSum = new int[nums.length];
        for (int i = 0; i < nums.length; i++) {
            runningSum[i] = i == 0 ? nums[i] : runningSum[i - 1] + nums[i];
        }
        return runningSum;
    }
}
// @lc code=end
