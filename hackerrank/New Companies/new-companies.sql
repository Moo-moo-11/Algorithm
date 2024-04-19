SELECT a.company_code, a.founder,
             COUNT(DISTINCT b.lead_manager_code),
             COUNT(DISTINCT c.senior_manager_code),
             COUNT(DISTINCT d.manager_code),
             COUNT(DISTINCT e.employee_code)       
FROM Company a INNER JOIN Lead_Manager b ON a.company_code = b.company_code
            INNER JOIN Senior_manager c ON b.company_code = c.company_code
            INNER JOIN Manager d ON c.company_code = d.company_code
            INNER JOIN Employee e ON d.company_code = e.company_code
GROUP BY a.company_code, a.founder
ORDER BY a.company_code
