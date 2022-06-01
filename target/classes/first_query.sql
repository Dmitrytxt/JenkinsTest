SELECT project.name PROJECT, test.name TEST, test.end_time - test.start_time MIN_WOKING_TIME FROM test 
CROSS JOIN project ON test.project_id = project.id 
ORDER BY project.name ASC, test.name ASC