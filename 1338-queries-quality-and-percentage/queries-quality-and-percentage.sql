select query_name, round(avg(rating/position), 2) quality,
       round(sum(if(rating < 3, 1, 0))*100/count(rating), 2) poor_query_percentage
from Queries
where query_name is not null
group by 1