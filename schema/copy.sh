#!/bin/sh
echo COPY Division FROM vlds
psql -c 'COPY (
        SELECT DISTINCT div_num::integer, div_name
        FROM sol_test_data
        WHERE div_num IS NOT NULL
        AND div_name IS NOT NULL
        ORDER BY div_num ) TO STDOUT;' vlds | \
        psql -c 'COPY Division FROM STDIN;' ateam

echo COPY school FROM vlds
psql -c 'COPY (
  SELECT div_num::integer, sch_num::integer,
         min(sch_name) AS sch_name
  FROM sol_test_data
  WHERE sch_num IS NOT NULL
  AND sch_name IS NOT NULL
  AND div_num IS NOT NULL
  AND div_name IS NOT NULL
  GROUP BY div_num, sch_num
  ORDER BY div_num, sch_num ) TO STDOUT;' vlds | \
  psql -c 'COPY school FROM STDIN;' ateam


echo COPY Test_Score FROM vlds
psql -c 'COPY (
        SELECT subject::text, test::text, test_level::text, pass_rate::real,
        fail_rate::real, pass_prof_rate::real, pass_advanced_rate::real,
        avg_sol_scale_score::real, sch_num::integer, div_num::integer, gender::text, disability_flag::text,
        federal_race_code::integer,disadvantaged_flag::text,lep_flag::text
        FROM sol_test_data
        WHERE school_year = '2011-2012'
        AND subject IS NOT NULL
        AND test_level IS NOT NULL
        AND test IS NOT NULL
        AND sch_num IS NOT NULL
        AND div_num IS NOT NULL
        AND avg_sol_scale_score IS NOT NULL
ORDER BY test ) TO STDOUT;' vlds | \
        psql -c 'COPY Test_Score FROM STDIN;' ateam
