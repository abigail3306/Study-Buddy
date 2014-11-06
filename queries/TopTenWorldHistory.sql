-- 
-- Find the top 30 schools that performed advanced on World History I
--
-- Parameters: test_name(1), test_name(2), subject
--

SELECT sch_name, subject, test_name, pass_advanced_rate
FROM school AS s
   JOIN test_score AS t ON t.sch_num = s.sch_num
WHERE test_name = 'World History I'
   AND pass_rate = 100
   AND pass_advanced_rate > 1
   AND gender IS NULL
   AND disability_flag IS NULL
   AND federal_race_code IS NULL
   AND lep_flag IS NULL
   AND disadvantaged_flag IS NULL
 
ORDER BY pass_advanced_rate DESC
LIMIT 10