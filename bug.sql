SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000; -- This query might cause issues if the 'salary' column has NULL values.  The comparison '> 100000' will treat NULL as neither greater nor less than 100000, effectively excluding employees with NULL salaries.

-- Another potential issue is with data type mismatch. If 'salary' is stored as a string instead of a numeric type, the comparison '> 100000' might lead to unexpected results depending on the database's collation rules.