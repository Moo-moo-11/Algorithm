with Manager as (select managerId id, count(1) cn
                 from Employee
                 where managerId is not null
                 group by 1
                 having cn >= 5)
select name
from Employee
where id in (select id from Manager)
