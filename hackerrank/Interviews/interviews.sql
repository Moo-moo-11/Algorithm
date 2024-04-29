SELECT a.contest_id, a.hacker_id, a.name, SUM(e.total_submissions), SUM(e.total_accepted_submissions),
       SUM(d.total_views), SUM(d.total_unique_views)
FROM Contests a INNER JOIN Colleges b ON a.contest_id = b.contest_id  INNER JOIN Challenges c ON b.college_id = c.college_id
LEFT JOIN (SELECT challenge_id, SUM(total_views) total_views, SUM(total_unique_views) total_unique_views
FROM View_Stats GROUP BY challenge_id) d ON c.challenge_id = d.challenge_id
LEFT JOIN (SELECT challenge_id, SUM(total_submissions) total_submissions, SUM(total_accepted_submissions) total_accepted_submissions
FROM Submission_stats GROUP BY challenge_id) e ON c.challenge_id = e.challenge_id
GROUP BY a.contest_id, a.hacker_id, a.name
ORDER BY a.contest_id
