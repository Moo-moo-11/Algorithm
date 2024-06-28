SELECT b.name Department, a.name Employee, a.salary Salary
FROM Employee a JOIN Department b ON a.departmentId = b.id
AND (b.id, a.salary) IN (SELECT d.id, MAX(c.salary)
FROM Employee c LEFT JOIN Department d ON c.departmentId = d.id
GROUP BY d.id)