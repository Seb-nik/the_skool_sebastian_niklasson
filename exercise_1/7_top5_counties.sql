SET PAGESIZE 100
DESC system.majors;

-- Top 5 counties based on accepted applications
-- Also making sure to not use "Various counties"

SELECT
	LOWER(län) AS County,
	COUNT(*) AS Accepted
FROM majors
WHERE beslut = 'Beviljad' AND län != 'Flera kommuner'
GROUP BY LOWER(län)
ORDER BY Accepted DESC
FETCH FIRST 5 ROWS ONLY;


EXIT
