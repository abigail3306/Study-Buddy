--
\echo Science Query
-- Selects the fail rate and average sol score for 5th grade Science for
--Hamilton Elementary
-- Schema: div_name, sch_name, test_name, fail_rate, avg_sol_scale_score
 

select d.div_num, s.sch_name, t.test_name , t.fail_rate, t.avg_sol_scale_score
from test_score as t
join school as s on t.sch_num = s.sch_num
join division as d on s.div_num = d.div_num
where d.div_name = 'Loudoun County'
and t.test_level = '5'
and s.sch_name = 'Hamilton Elementary'
and t.test_name ='Science'