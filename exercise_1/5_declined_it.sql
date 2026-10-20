SET PAGESIZE 100
DESC system.majors;

-- Declined applications for every major in IT

SELECT
	LOWER(utbildningsnamn) AS Major,
	COUNT(*)
FROM majors
WHERE beslut = 'Avslag' AND utbildningsområde = 'Data/IT'
GROUP BY LOWER(utbildningsnamn);


EXIT
