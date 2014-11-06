--
-- Finds the top 10 schools in the given division where the average sol
-- score is greater than 400 for two specific tests
--
-- Parameters: div_num, test_name(1), test_name(2)
--
﻿
SELECT DISTINCT school.sch_name, ROUND((AVG(avg_sol_scale_score))::numeric, 0) AS avg_sol_scale_score, test_name
FROM school
JOIN test_score
ON test_score.sch_num = school.sch_num
WHERE(avg_sol_scale_score > 400 AND (test_name = 'Biology' OR test_name = 'Chemistry') AND school.div_num = 120)
GROUP BY school.sch_name, test_name
ORDER BY ROUND((AVG(avg_sol_scale_score))::numeric, 0) DESC
LIMIT 10;
