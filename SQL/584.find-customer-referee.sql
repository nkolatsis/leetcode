--
-- @lc app=leetcode id=584 lang=mysql
--
-- [584] Find Customer Referee
--

-- @lc code=start
-- Write your MySQL query statement below

-- @lc code=end

SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;