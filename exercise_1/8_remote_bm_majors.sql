SET PAGESIZE 100
DESC system.majors;

-- Applications for remote/brick and mortar majors per category

SELECT
	utbildningsområde,
	COUNT(CASE WHEN studieform = 'Distans' THEN 1 END) Remote,
	COUNT(CASE WHEN studieform = 'Bunden' THEN 1 END) BM
FROM majors
GROUP BY utbildningsområde;


EXIT
