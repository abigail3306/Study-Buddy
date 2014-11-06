#!/bin/sh
echo COPY Division FROM vlds
psql -c 'COPY (
	SELECT DISTINCT div_num::integer, div_name::text
	FROM sol_test_data
	WHERE div_num IS NOT NULL
	ORDER BY div_num ) TO STDOUT;' vlds | \
	psql -c 'COPY Division FROM STDIN;' ateam

echo COPY School FROM vlds
psql -c 'COPY (
	SELECT DISTINCT sch_num::integer, sch_name::text, div_num::integer
	FROM sol_test_data
	WHERE sch_num IS NOT NULL
	ORDER BY sch_num ) TO STDOUT;' vlds | \
	psql -c 'COPY School FROM STDIN;' ateam	

	
echo COPY Test_Score FROM vlds
psql -c 'COPY (
	SELECT subject::text, Test_NAME::text, TEST_LEVEL::integer, pass_rate::real,
	fail_rate::real, pass_prof_rate::real, pass_advanced_rate::real,
	avg_sol_scale_score::real
	FROM sol_test_data
	WHERE Test_Name IS NOT NULL;
	ORDER BY Test_Name ) TO STDOUT;' vlds | \
	psql -c 'COPY Test_Score FROM STDIN;' ateam
