DROP TABLE IF EXISTS Test_Score;
DROP TABLE IF EXISTS School;
DROP TABLE IF EXISTS Division;


CREATE TABLE Division (
    div_num integer NOT NULL,
    div_name text NOT NULL
);

ALTER TABLE Division OWNER TO ateam;

COMMENT ON TABLE Division IS 'All divisions in Virginia';


CREATE TABLE School (
    div_num integer NOT NULL,
    sch_num integer NOT NULL,
    sch_name text NOT NULL
);

ALTER TABLE School OWNER TO ateam;

COMMENT ON TABLE School IS 'All schools in Virginia';


CREATE TABLE Test_Score(
	subject text,
	Test_NAME text, 
	TEST_LEVEL text NOT NULL,
	pass_rate real,
	fail_rate real,
	pass_prof_rate real,
	pass_advanced_rate real,
	avg_sol_scale_score real NOT NULL,
    	sch_num integer NOT NULL ,
        div_num integer NOT NULL,
	gender text,
	disability_flag text,
	federal_race_code integer,
	disadvantaged_flag text,
	lep_flag text
);

ALTER TABLE Test_Score OWNER TO ateam;

COMMENT ON TABLE Test_Score IS 'list of tests their scools and other related ';
