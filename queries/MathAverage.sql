--
-- Finds the top 50 schools with a pass rate over 95% and average sol score
-- over 500 in the choosen subject.
--
-- Parameters: subject
--

SELECT school.div_num, school.sch_name
FROM school
JOIN test_score
ON test_score.sch_num = school.sch_num
WHERE(subject = 'MATH' AND pass_rate > 95 AND avg_sol_scale_score > 500)
ORDER BY (avg_sol_scale_score, pass_rate) DESC
LIMIT 50;
