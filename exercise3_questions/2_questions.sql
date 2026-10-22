SET PAGESIZE 100


-- Checking the amount of accepted applications for remote and BM for every location in %
-- Repeating the expression in ORDER BY due to me changing the result to a string
SELECT
	LOWER(län) AS Location,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' AND studieform = 'Distans' THEN 1 END) * 100 / COUNT(*)), '%') AS Remote,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' AND studieform = 'Bunden' THEN 1 END) * 100 / COUNT(*)), '%') AS Brick_and_mortar
FROM majors
GROUP BY Location
ORDER BY ROUND(COUNT(CASE WHEN beslut = 'Beviljad' AND studieform = 'Distans' THEN 1 END) * 100 / COUNT(*), 2) DESC;


EXIT
