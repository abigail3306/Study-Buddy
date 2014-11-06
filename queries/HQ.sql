--
\echo History Query
-- Selects the top school's name, division, pass rate, pass profficiant rate,
-- pass advanced rate and SOL score in Virginia for 8th grade History
--
-- Schema: kind varchar(15), year integer
--  Order: avg_sol_scale_score

select sch_name, div_name, pass_rate, pass_prof_rate, pass_advanced_rate,
avg_sol_scale_score
from test_score as t
join school as s on t.sch_num = s.sch_num
join division as d on s.sch_num = d.siv_num
where test_level = '8'
and subject = 'HIST'
order by avg_sol_scale_score
limit 1