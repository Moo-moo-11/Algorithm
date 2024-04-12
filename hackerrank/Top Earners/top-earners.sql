SELECT CONCAT(MAX(salary*months), ' ',(SELECT COUNT(1) FROM Employee WHERE salary*months = (SELECT MAX(salary*months) FROM Employee)))
FROM Employee
