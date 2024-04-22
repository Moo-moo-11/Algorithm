SELECT hacker_id, name
FROM
(SELECT d.hacker_id, d.name, count(1) cn
FROM Submissions a INNER JOIN Challenges b ON a.challenge_id = b.challenge_id
                   INNER JOIN Difficulty c ON b.difficulty_level = c.difficulty_level
                   INNER JOIN Hackers d ON d.hacker_id = a.hacker_id
WHERE a.score = c.score
GROUP BY d.hacker_id, d.name
HAVING cn >= 2
ORDER BY cn DESC, d.hacker_id) a
