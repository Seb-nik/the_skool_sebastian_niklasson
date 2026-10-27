SET PAGESIZE 100
DESC system.majors;

-- Accepted applications for every major in IT

SELECT
	LOWER(utbildningsnamn) AS Major,
	COUNT(*)
FROM majors
WHERE beslut = 'Beviljad' AND utbildningsområde = 'Data/IT'
GROUP BY Major;


EXIT
