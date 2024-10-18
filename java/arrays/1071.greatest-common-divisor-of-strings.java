package arrays;

/*
 * @lc app=leetcode id=1071 lang=java
 *
 * [1071] Greatest Common Divisor of Strings
 */

// @lc code=start
class Solution {
    public static String gcdOfStrings(String str1, String str2) {
        String gcd = "";
        if ((str1 + str2).equals(str2 + str1)) {
            String shorty = str1.length() < str2.length() ? str1 : str2;
            for (int i = shorty.length() - 1; i >= 0; i--) {
                if (isValidGcd(shorty, str1) && isValidGcd(shorty, str2)) {
                    gcd = shorty;
                    i = 0;
                } else {
                    shorty = shorty.substring(0, i - 1);
                }
            }
        }
        return gcd;
    }

    private static boolean isValidGcd(String gcd, String str) {
        boolean returnVal = true;
        boolean isDivisible = str.length() % gcd.length() == 0 ? true : false;
        if (isDivisible) {
            int ratio = str.length() / gcd.length();
            if (!gcd.repeat(ratio).equals(str)) {
                returnVal = false;
            }
        } else {
            returnVal = false;
        }
        return returnVal;
    }
}
// @lc code=end
