SET PAGESIZE 100
DESC system.majors;

-- Accepted applications for every category in each school

SELECT
	LOWER(utbildningsanordnare_administr) AS school,
	LOWER(utbildningsnamn) AS Major,
	COUNT(*)
FROM majors
WHERE beslut = 'Beviljad' AND utbildningsområde = 'Data/IT'
GROUP BY school, Major;


EXIT
