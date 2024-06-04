SELECT a.name, SUM(if(b.distance IS NULL, 0, b.distance)) travelled_distance
FROM Users a LEFT JOIN Rides b ON a.id = b.user_id
GROUP BY a.id
ORDER BY travelled_distance DESC, a.name