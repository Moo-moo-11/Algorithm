SELECT a.hacker_id, b.name, a.sum_score
FROM
(SELECT hacker_id, SUM(max_score) sum_score
FROM
(SELECT hacker_id, challenge_id, MAX(score) max_score
FROM Submissions
GROUP BY hacker_id, challenge_id ) c
GROUP BY hacker_id
HAVING sum_score > 0) a LEFT JOIN Hackers b ON a.hacker_id = b.hacker_id
ORDER BY a.sum_score DESC, a.hacker_id
