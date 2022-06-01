SELECT count(browser) BROWSERS FROM test 
WHERE browser = '%s'
UNION 
SELECT count(browser) FROM test 
WHERE browser = '%s'