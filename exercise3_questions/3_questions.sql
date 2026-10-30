SET PAGESIZE 100


-- Compares successrate in applications in private and non-private 
SELECT
	LOWER(län) AS Location,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' AND huvudmannatyp = 'Privat' THEN 1 END) * 100 / 
	GREATEST(COUNT(CASE WHEN huvudmannatyp = 'Privat' THEN 1 END), 1)), '%') AS Private,
	CONCAT(ROUND(COUNT(CASE WHEN beslut = 'Beviljad' AND huvudmannatyp = 'Kommun' THEN 1 END) * 100 / 
	GREATEST(COUNT(CASE WHEN huvudmannatyp = 'Kommun' THEN 1 END), 1)), '%') AS Non_private
FROM majors
GROUP BY Location
ORDER BY Location DESC;


EXIT
