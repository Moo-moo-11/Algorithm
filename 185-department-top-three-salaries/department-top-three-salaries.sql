select Department, Employee, Salary
from
(
select b.name Department, a.name Employee, a.salary Salary,
       dense_rank() over (partition by departmentId order by salary desc) rn
from Employee a left join Department b on a.departmentId = b.id
) c
where rn <= 3