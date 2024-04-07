SELECT distinct CITY
FROM STATION
WHERE CITY regexp '^[^aeoiou]'
