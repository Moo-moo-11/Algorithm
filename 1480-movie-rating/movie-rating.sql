select name results
from
(
select d.name, rank() over (order by cn desc, d.name) rn
from Users d left join (select user_id, count(1) cn
from MovieRating
group by user_id) e on d.user_id = e.user_id
) f
where rn = 1

UNION ALL

select title results
from
(
select a.title, rank() over (order by b.rating desc, a.title) rn
from Movies a left join (select movie_id, avg(rating) rating
from MovieRating
where year(created_at) = '2020' and month(created_at) = '02'
group by movie_id) b on a.movie_id = b.movie_id
) c
where rn = 1