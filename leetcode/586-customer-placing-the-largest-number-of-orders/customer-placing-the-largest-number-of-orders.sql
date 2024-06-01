SELECT customer_number
FROM 
(SELECT customer_number, COUNT(1) cn
FROM Orders
GROUP BY customer_number
ORDER BY cn DESC
LIMIT 1
) a