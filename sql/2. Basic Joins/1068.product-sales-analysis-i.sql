--
-- @lc app=leetcode id=1068 lang=mysql
--
-- [1068] Product Sales Analysis I
--

-- @lc code=start
-- Write your MySQL query statement below
SELECT p.product_name AS "product_name", s.year AS "year", s.price AS "price"
FROM Sales AS s
INNER JOIN Product AS p
    ON s.product_id = p.product_id
-- @lc code=end

