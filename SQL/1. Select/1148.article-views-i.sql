--
-- @lc app=leetcode id=1148 lang=mysql
--
-- [1148] Article Views I
--

-- @lc code=start
-- Write your MySQL query statement below
SELECT author_id AS id FROM Views
WHERE author_id = viewer_id
GROUP BY author_id
ORDER BY author_id

-- @lc code=end

