--
-- @lc app=leetcode id=1661 lang=mysql
--
-- [1661] Average Time of Process per Machine
--

-- @lc code=start
-- Write your MySQL query statement below
SELECT a.machine_id, ROUND(AVG(b.timestamp-a.timestamp), 3) AS processing_time
FROM Activity a, Activity b
WHERE a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.activity_type = "start"
AND b.activity_type = "end"
GROUP BY a.machine_id

-- @lc code=end

