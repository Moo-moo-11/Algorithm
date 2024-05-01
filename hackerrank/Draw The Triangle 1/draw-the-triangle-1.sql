WITH RECURSIVE Draw_star AS (
    SELECT 20 as n, REPEAT('* ', 20) AS star
    UNION ALL
    SELECT n-1 as n, REPEAT('* ', n-1) AS star
    FROM Draw_star
    WHERE n > 1
)
SELECT star
FROM Draw_star
