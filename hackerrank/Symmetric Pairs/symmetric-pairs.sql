SELECT X, Y
FROM
(SELECT X, Y
FROM
(SELECT X, Y, Count(1) cn
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING cn > 1) a
UNION
SELECT If(a.X > a.Y, a.Y, a.X) X, If(a.X > a.Y, a.X, a.Y) Y
FROM Functions a LEFT JOIN Functions b ON a.X=b.Y
WHERE a.Y = b.X AND a.X != a.Y) c
ORDER BY X
