--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
-- Write your MySQL query statement below
SELECT uni.unique_id AS "unique_id", e.name AS "name"
FROM Employees AS e
LEFT JOIN EmployeeUNI AS uni
    ON e.id = uni.id


-- @lc code=end

