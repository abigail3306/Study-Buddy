
-- Selects the top 10 School in Loudoun County for 4th grade Math scores.
-- Where you are not disadvantaged, disabled, and speak English
--
-- Schema: div_name, sch_name, avg_sol_scale_score
--  Order: avg_sol_scale_score

select d.div_name, s.sch_name, t.avg_sol_scale_score
from test_score as t 
join school as s on t.sch_num = s.sch_num AND t.div_num = s.div_num
join division as d on s.div_num = d.div_num
where d.div_name = 'Loudoun County '
and t.test_level = '4'
and t.subject = 'MATH'
and t.gender is null
and t.federal_race_code is null
and t.disadvantaged_flag = 'N'
and t.disability_flag = 'N'
and t.lep_flag = 'N'
order by t.avg_sol_scale_score desc
limit 10
