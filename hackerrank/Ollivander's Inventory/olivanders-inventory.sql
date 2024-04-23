SELECT a.id, b.age, a.coins_needed, a.power
FROM Wands a LEFT JOIN Wands_Property b ON a.code = b.code
WHERE (a.power, b.age, a.coins_needed) IN (SELECT a.power, b.age, min(a.coins_needed)
                                           FROM Wands a LEFT JOIN Wands_Property b ON a.code = b.code
                                           WHERE b.is_evil = 0  GROUP BY a.power, b.age)
ORDER BY a.power DESC, b.age DESC
