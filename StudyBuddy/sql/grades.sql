-- build a map for each division
SELECT
  '"' || div_num || '": {' || string_agg(grades, ', ') || '},'
FROM (
   -- build a list for each school
   SELECT div_num, '"' || sch_num || '": ["'
       || string_agg(grade_code, '", "') || '"]' AS grades
   FROM (
        -- grade levels for each school
        SELECT DISTINCT div_num, sch_num, grade_code
        FROM fall_membership
        WHERE div_num IS NOT NULL
          AND sch_num IS NOT NULL
          AND grade_code NOT IN ('PK', 'KG', '01', '02')
          -- do not count subgroups
          AND federal_race_code IS NULL
          AND gender IS NULL
          AND disability_flag IS NULL
          AND lep_flag IS NULL
          AND disadvantaged_flag IS NULL
        ORDER BY div_num, sch_num, grade_code
    ) AS q1
    GROUP BY div_num, sch_num
    ORDER BY div_num, sch_num
) AS q2
GROUP BY div_num
ORDER BY div_num
