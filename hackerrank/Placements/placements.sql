SELECT a.Name
FROM Students a LEFT JOIN Packages b ON a.ID = b.ID LEFT JOIN Friends c ON c.ID = a.ID LEFT JOIN Packages d ON c.Friend_ID = d.ID
WHERE b.Salary < d.Salary
ORDER BY d.Salary
