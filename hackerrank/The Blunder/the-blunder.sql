SELECT ROUND(AVG(Salary)) - ROUND(AVG(REPLACE(Salary,'0','')))
FROM EMPLOYEES
