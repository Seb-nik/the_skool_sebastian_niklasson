SET PAGESIZE 100
DESC system.majors;

-- Amount of accepted applications per category

SELECT
	utbildningsområde,
	COUNT(*)
FROM majors
WHERE beslut = 'Beviljad'
GROUP BY utbildningsområde;


EXIT
