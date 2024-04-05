select b.employee_id, b.name, count(1) reports_count, round(avg(a.age)) average_age
from Employees a left join Employees b on a.reports_to = b.employee_id
where b.employee_id is not null
group by b.employee_id
order by b.employee_id
