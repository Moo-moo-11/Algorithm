SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING Count(1) >= 3