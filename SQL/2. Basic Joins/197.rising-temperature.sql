--
-- @lc app=leetcode id=197 lang=mysql
--
-- [197] Rising Temperature
--

-- @lc code=start
-- Write your MySQL query statement below

SELECT wnow.id AS "Id" FROM Weather AS wnow
INNER JOIN Weather AS wpast ON DATEDIFF(wnow.recordDate, wpast.recordDate) = 1
WHERE wnow.temperature > wpast.temperature;

-- @lc code=end

