--
-- Finds the averages sol scores for every test taken by every grade in the
-- specified school.
--
-- Parameters: sch_name
--

SELECT school.sch_name, test_level, test_name, ROUND((AVG(avg_sol_scale_score))::numeric, 0) AS avg_sol_scale_score
FROM school
JOIN test_score
ON test_score.sch_num = school.sch_num
WHERE(sch_name = 'Falls Church High')
GROUP BY school.sch_name, test_level, test_name
ORDER BY test_level;
