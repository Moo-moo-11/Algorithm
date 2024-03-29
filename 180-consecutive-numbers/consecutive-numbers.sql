select distinct a.num ConsecutiveNums
from Logs a left join logs b on a.id = b.id + 1 left join logs c on a.id = c.id + 2
where a.num = b.num and a.num = c.num