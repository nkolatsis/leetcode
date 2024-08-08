package Arrays;
/*
 * @lc app=leetcode id=1768 lang=java
 *
 * [1768] Merge Strings Alternately
 */

// @lc code=start
class Solution {
    public String mergeAlternately(String word1, String word2) {
        int length = word1.length() > word2.length() ? word1.length() : word2.length();

        StringBuilder merged = new StringBuilder();

        for (int i = 0; i < length; i++) {
            if (i < word1.length()) merged.append(word1.charAt(i));
            if (i < word2.length()) merged.append(word2.charAt(i));
        }

        return merged.toString();        
    }
}
// @lc code=end

