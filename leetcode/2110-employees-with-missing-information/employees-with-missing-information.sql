SELECT a.employee_id
FROM Employees a LEFT JOIN Salaries b ON a.employee_id = b.employee_id
WHERE b.salary IS NULL
UNION
SELECT c.employee_id
FROM Salaries c LEFT JOIN Employees d ON c.employee_id = d.employee_id
WHERE d.name IS NULL
ORDER BY employee_id