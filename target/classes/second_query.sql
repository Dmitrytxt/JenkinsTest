SELECT project.name PROJECT, count(distinct test.name) TEST_COUNTS FROM project 
LEFT JOIN test ON test.project_id = project_id
GROUP BY project.name