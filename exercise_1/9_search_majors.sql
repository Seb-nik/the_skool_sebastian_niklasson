SET PAGESIZE 100
DESC system.majors;


-- Counts every row where a major contains AI
SELECT
	COUNT(*)AS Majors_that_contains_ai
FROM majors
WHERE INSTR(utbildningsnamn, 'AI') > 0;


EXIT
