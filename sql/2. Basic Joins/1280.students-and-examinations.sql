--
-- @lc app=leetcode id=1280 lang=mysql
--
-- [1280] Students and Examinations
--

-- @lc code=start
-- Write your MySQL query statement below

WITH StudentSubjects AS (
    SELECT s.student_id, s.student_name, sub.subject_name
    FROM Students s
    CROSS JOIN Subjects sub
)
SELECT
    ss.student_id,
    ss.student_name,
    ss.subject_name,
    COUNT(e.subject_name) AS "attended_exams"
FROM StudentSubjects ss
LEFT JOIN Examinations e
ON ss.student_id = e.student_id AND ss.subject_name = e.subject_name
GROUP BY ss.student_id, sub.subject_name
ORDER BY ss.student_id

-- @lc code=end

