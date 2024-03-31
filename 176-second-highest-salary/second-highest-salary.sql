select
(select distinct Salary as SecondHighestSalary
from Employee
order by salary desc 
limit 1 offset 1) SecondHighestSalary