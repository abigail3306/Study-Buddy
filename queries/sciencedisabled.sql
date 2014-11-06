-- Selects the pass rate, fail rate and average sol score for 
--8th grade Science for Harmony Middle for a white female who 
--has a disability.
-- Schema: div_name, sch_name, test_name, pass_rate, fail_rate, avg_sol_scale_score
 

select d.div_name, s.sch_name, t.test_name, 
t.pass_rate, t.fail_rate,t.avg_sol_scale_score
from school as s
join division as d on s.div_num = d.div_num
join test_score as t on s.div_num = t.div_num and s.sch_num = t.sch_num
where d.div_name = 'Loudoun County '
and s.sch_name = 'Harmony Middle'
and t.subject = 'SCI'
and t.test_level = '8'
and t.gender = 'F'
and t.disability_flag = 'Y'
and t.federal_race_code = '5'
and t.disadvantaged_flag = 'N'
and t.lep_flag = 'N'
