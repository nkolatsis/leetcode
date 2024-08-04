package Basics;

/*
 * @lc app=leetcode id=383 lang=java
 *
 * [383] Ransom Note
 */

// @lc code=start

import java.util.HashMap;

class Solution {
    public boolean canConstruct(String ransomNote, String magazine) {
        HashMap<Character, Integer> map = new HashMap<>();

        for (Character c: ransomNote.toCharArray()) {
            int value = map.containsKey(c) ? map.get(c) + 1 : 1;
            map.put(c, value);
        }

        for (Character c: magazine.toCharArray()) {
            int value = map.containsKey(c) ? map.get(c) - 1 : -1;
            map.put(c, value);
        }

        boolean sameChars = true;
        for (Integer i : map.values()) {
            if (i > 0) sameChars = false;
        }
        
        return sameChars;
    }
}
// @lc code=end

