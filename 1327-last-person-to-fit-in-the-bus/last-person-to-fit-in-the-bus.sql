select person_name
from Queue
where turn = (
select max(turn) turn
from
(select turn,
        sum(weight) over (order by Turn) Total_Weight
from Queue
) a
where Total_Weight <= 1000)