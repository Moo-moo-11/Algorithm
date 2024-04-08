select id, count(1) num
from
(
select requester_id id
from RequestAccepted
UNION ALL
select accepter_id id
from RequestAccepted
) a
group by id
order by num desc
limit 1
