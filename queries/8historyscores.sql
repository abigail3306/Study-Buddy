--
\echo History Query
-- Selects the top school's name, division, pass rate, pass profficiant rate,
-- pass advanced rate and SOL score in Virginia for 8th grade History for a
-- White male.
--
-- Schema: kind varchar(15), year integer
--  Order: avg_sol_scale_score

select s.sch_name, d.div_name, t.pass_rate, t.pass_prof_rate, 
pass_advanced_rate,avg_sol_scale_score
from test_score as t
join school as s on t.sch_num = s.sch_num AND t.div_num = s.div_num
join division as d on s.div_num = d.div_num
where t.test_level = '8'
and t.subject = 'HIST'
and disability_flag is null
and disadvantaged_flag is null
and gender = 'M'
and lep_flag is null
and federal_race_code = 5
order by t.avg_sol_scale_score desc
limit 1
