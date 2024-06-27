SELECT a.user_id buyer_id, a.join_date, COUNT(order_id) orders_in_2019
FROM Users a LEFT JOIN (SELECT * FROM Orders WHERE YEAR(order_date) = 2019) b ON a.user_id = b.buyer_id
GROUP BY 1, 2