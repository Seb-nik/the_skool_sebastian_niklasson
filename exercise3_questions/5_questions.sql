SET PAGESIZE 100


-- Checking what the rate of applying for 3+ periods also receives 3+ periods in the different categories
SELECT
	LOWER(utbildningsområde) AS Category,
	CONCAT(ROUND(COUNT(CASE WHEN sökta_utbildningsomgångar > 2  AND beviljade_utbildningsomgångar > 2 THEN 1 END) * 100 /
	COUNT(CASE WHEN sökta_utbildningsomgångar > 2 THEN 1 END)), '%') AS "Accepted_3+_periods"
FROM majors
GROUP BY Category
ORDER BY
COUNT(CASE WHEN sökta_utbildningsomgångar > 2  AND beviljade_utbildningsomgångar > 2 THEN 1 END) * 100 /
COUNT(CASE WHEN sökta_utbildningsomgångar > 2 THEN 1 END) DESC;
	


EXIT
