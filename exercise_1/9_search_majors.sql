SET PAGESIZE 100
DESC system.majors;


-- Counts every row where a major contrains ai
SELECT
	COUNT(*) AS Majors_that_contains_ai
FROM majors
WHERE INSTR(LOWER(utbildningsnamn), 'ai') > 0;


EXIT
