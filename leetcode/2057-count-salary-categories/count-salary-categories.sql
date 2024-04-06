select 'Low Salary' category, count(1) accounts_count
from Accounts
where income < 20000
UNION
select 'Average Salary' category, count(1) accounts_count
from Accounts
where income between 20000 and 50000
UNION
select 'High Salary' category, count(1) accounts_count
from Accounts
where income > 50000
