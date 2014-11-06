ALTER TABLE Division ADD PRIMARY KEY (div_num);

ALTER TABLE School ADD PRIMARY KEY (div_num, sch_num);  
ALTER TABLE School ADD FOREIGN KEY (div_num) REFERENCES Division;

Alter Table Test_Score ADD Foreign KEY (div_num,sch_num) References School;


SELECT count(*) AS div_num FROM Division;
ANALYZE VERBOSE Division;

SELECT count(*) AS sch_name FROM School;
ANALYZE VERBOSE School;

SELECT count(*) AS avg_sol_scale_score FROM Test_Score;
ANALYZE VERBOSE Test_Score;
