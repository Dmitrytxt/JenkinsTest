SELECT project.name PROJECT, test.name TEST, test.start_time DATE FROM test 
CROSS JOIN project ON test.project_id = project.id 
WHERE test.start_time > '%s'
ORDER BY project.name ASC, test.name ASC
