SELECT name
FROM SalesPerson
WHERE name NOT IN (SELECT DISTINCT c.name
FROM Orders a LEFT JOIN Company b ON a.com_id = b.com_id LEFT JOIN SalesPerson c ON a.sales_id = c.sales_id
WHERE b.name = 'RED')