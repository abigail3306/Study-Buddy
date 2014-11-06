--Find the top 100 schools that had the highest proficiency in math scores
--for 6th grade.
--
-- Parameters: test_level, subject
--

SELECT sch_name, test_name, subject, test_level, pass_prof_rate
FROM school AS s
   JOIN test_score AS t ON t.sch_num = s.sch_num
WHERE subject = 'MATH'
   AND test_level = '6'
   AND pass_rate = 100
   AND pass_prof_rate > 1
   AND gender IS NULL
   AND disability_flag IS NULL
   AND federal_race_code IS NULL
   AND disadvantaged_flag IS NULL
   AND lep_flag IS NULL
ORDER BY pass_prof_rate DESC
LIMIT 100;
