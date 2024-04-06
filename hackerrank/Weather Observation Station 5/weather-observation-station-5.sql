(select CITY, length(CITY) len
from STATION
order by length(CITY), CITY
limit 1)
UNION
(select CITY, length(CITY) len
from STATION
order by length(CITY) desc, CITY
limit 1)
