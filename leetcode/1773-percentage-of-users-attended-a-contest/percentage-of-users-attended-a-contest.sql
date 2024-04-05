select b.contest_id, round(count(*)*100/(select count(1) from Users), 2) percentage
from Users a left join Register b on a.user_id = b.user_id
where contest_id is not null
group by b.contest_id
order by 2 desc, 1
