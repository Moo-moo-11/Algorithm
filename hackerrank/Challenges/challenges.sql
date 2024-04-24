SELECT a.hacker_id, a.name, count(1) cn
FROM Hackers a JOIN Challenges b ON a.hacker_id = b.hacker_id
GROUP BY a.hacker_id, a.name
HAVING cn IN (SELECT cn FROM
(SELECT max(cn) cn, COUNT(1)
FROM
(SELECT hacker_id, COUNT(1) cn
FROM Challenges
GROUP BY hacker_id
ORDER BY cn DESC, hacker_id) c
UNION
SELECT cn, COUNT(cn) cncn
FROM
(SELECT hacker_id, COUNT(1) cn
FROM Challenges
GROUP BY hacker_id
ORDER BY cn DESC, hacker_id) d
GROUP BY cn
HAVING cncn = 1) e)
ORDER BY cn DESC, a.hacker_id
