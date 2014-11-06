--
\echo Loudoun Math Query
-- Selects the top 5 School in Loudoun County for 4th grade Math scores.
--
-- Schema: kind varchar(15), year integer
--  Order: avg_sol_scale_score

select distinct s.sch_name, t.avg_sol_scale_score
from test_score as t
join school as s on t.sch_num = s.sch_num
join division as d on s.div_num = d.div_num
where d.div_name = 'Loudoun County'
and t.test_level = '4'
and t.subject = 'MATH'
order by t.avg_sol_scale_score desc
limit 5