-- Solution 1: Using IS NOT NULL to explicitly exclude NULL values
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;

-- Solution 2: Using COALESCE to replace NULL values with a default value (e.g., 0)
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;

-- Solution 3: Handling potential data type mismatch (assuming salary should be numeric)
-- You might need to cast or convert salary to a numeric type before comparison. The specific function depends on your database system (e.g., CAST, CONVERT)
SELECT * FROM employees WHERE department = 'Sales' AND CAST(salary AS DECIMAL(10,2)) > 100000;