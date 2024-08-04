package Basics;
/*
 * @lc app=leetcode id=412 lang=java
 *
 * [412] Fizz Buzz
 */

// @lc code=start

import java.util.ArrayList;
import java.util.List;

class Solution {
    public List<String> fizzBuzz(int n) {
        List<String> answer = new ArrayList<>(n);
        for (int i = 1; i <= n; i++) {
            int mod3 = i % 3;
            int mod5 = i % 5;
            String str = mod3 != 0 && mod5 != 0 ? String.valueOf(i) :
                mod3 == 0 && mod5 == 0 ? "FizzBuzz" :
                    mod3 == 0 ? "Fizz" : "Buzz";
            answer.add(str);
        }
        return answer;
    }
}
// @lc code=end

