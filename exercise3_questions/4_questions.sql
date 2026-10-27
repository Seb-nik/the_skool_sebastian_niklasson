SET PAGESIZE 100


-- Looking up the successrate of Specialazations/subcategories with 4 or more accepted applications
-- After that display the 10 highest. This gives us an idea of what subcategories has the higher success rate
SELECT
	LOWER(utbildningsområde) AS Category,
	LOWER(sun5_inriktning_namn) AS Specialazation,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) * 100 / COUNT(*)), '%') AS Accepted
FROM majors
GROUP BY Category, Specialazation
HAVING COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) > 3
ORDER BY ROUND(COUNT(CASE WHEN beslut = 'Beviljad' THEN 1 END) * 100 / COUNT(*)) DESC
FETCH FIRST 10 ROWS ONLY;


EXIT
