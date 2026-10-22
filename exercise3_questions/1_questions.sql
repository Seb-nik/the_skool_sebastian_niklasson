SET PAGESIZE 100



-- Lists all categories of majors and sorts them by successrate of their applications as %
-- Repeating the expression in the GROUP BY due to changing result to a string
SELECT
	utbildningsområde,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) * 100 / COUNT(*)), '%') AS Successrate,
	COUNT(*) AS Total_courses
FROM majors
GROUP BY utbildningsområde
ORDER BY ROUND(COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) * 100 / COUNT(*), 2) DESC;

EXIT
