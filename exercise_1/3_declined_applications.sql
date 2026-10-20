SET PAGESIZE 100
DESC system.majors;

-- Amount of declined applications per category

SELECT
	utbildningsområde,
	COUNT(*)
FROM majors
WHERE beslut = 'Avslag'
GROUP BY utbildningsområde;


EXIT
