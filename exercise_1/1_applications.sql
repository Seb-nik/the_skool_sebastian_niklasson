SET PAGESIZE 100
DESC system.majors;


-- Number of applications per category
SELECT
	utbildningsområde,
	COUNT(*)
FROM majors
GROUP BY utbildningsområde;


EXIT
