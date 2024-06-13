SELECT b.name, SUM(a.amount) balance
FROM Transactions a LEFT JOIN Users b ON a.account = b.account
GROUP BY a.account
HAVING SUM(a.amount) > 10000