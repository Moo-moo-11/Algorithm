SELECT distinct CITY
FROM STATION
WHERE CITY regexp '^[aeiou].*[aeiou]$'
