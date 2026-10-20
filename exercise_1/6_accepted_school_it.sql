SET PAGESIZE 100
DESC system.majors;

-- Accepted applications for every school in IT

SELECT
	LOWER(utbildningsanordnare_administr) AS school,
	COUNT(*)
FROM majors
WHERE beslut = 'Beviljad' AND utbildningsområde = 'Data/IT'
GROUP BY LOWER(utbildningsanordnare_administr);


EXIT
