SET PAGESIZE 100
DESC system.majors;



-- Lists all categories of majors and sorts them by successrate of their applications
SELECT
	utbildningsområde,
	ROUND(COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) / COUNT(*), 2) AS Successrate,
	COUNT(*) AS Total_courses
FROM majors
GROUP BY utbildningsområde
ORDER BY Successrate DESC;

EXIT
