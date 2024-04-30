WITH cte1 AS (
    SELECT submission_date, hacker_id, COUNT(1) cnt
    FROM Submissions
    GROUP BY submission_date, hacker_id
),
cte2 AS (
    SELECT submission_date, hacker_id 
    FROM Submissions s1 
    WHERE hacker_id IN (
        SELECT hacker_id
        FROM Submissions s2
        WHERE s2.submission_date <= s1.submission_date
        GROUP BY hacker_id
        HAVING COUNT(DISTINCT submission_date) = (
            SELECT COUNT(DISTINCT submission_date)
            FROM Submissions s3
            WHERE s3.submission_date <= s1.submission_date)
    )
),
cte3 AS (
    SELECT submission_date, COUNT(DISTINCT hacker_id) cnt
    FROM cte2
    GROUP BY submission_date
)
SELECT a.submission_date, c.cnt, a.hacker_id, b.name
FROM
(SELECT submission_date, hacker_id, ROW_NUMBER() OVER (PARTITION BY submission_date ORDER BY cnt DESC, hacker_id) rn
FROM cte1) a LEFT JOIN Hackers b ON a.hacker_id = b.hacker_id LEFT JOIN cte3 c ON c.submission_date = a.submission_date
WHERE rn = 1
