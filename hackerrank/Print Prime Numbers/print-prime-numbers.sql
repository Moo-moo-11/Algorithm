WITH RECURSIVE cte AS (
  SELECT 2 AS n
  UNION ALL
  SELECT n + 1 
  FROM cte
  WHERE n < 1000
),
Primes AS (
    SELECT prime FROM (
        SELECT IF(a.n/2 >= b.n AND a.n MOD b.n = 0, 0, a.n) as is_prime, a.n as prime FROM cte a CROSS JOIN cte b
    ) c
    GROUP BY prime
    HAVING MIN(is_prime) = prime
)
 SELECT GROUP_CONCAT(prime order by prime SEPARATOR "&") FROM Primes
