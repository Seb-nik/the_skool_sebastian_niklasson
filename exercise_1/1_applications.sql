SET PAGESIZE 100
DESC system.majors;


-- Number of applications per category
SELECT
	utbildningsområde,
	COUNT(*) AS amount
FROM majors
GROUP BY utbildningsområde
ORDER BY amount DESC;


EXIT
