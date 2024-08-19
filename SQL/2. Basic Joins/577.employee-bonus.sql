--
-- @lc app=leetcode id=577 lang=mysql
--
-- [577] Employee Bonus
--

-- @lc code=start
-- Write your MySQL query statement below
SELECT e.name, b.bonus from Employee as e
LEFT JOIN Bonus as b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL

-- @lc code=end

