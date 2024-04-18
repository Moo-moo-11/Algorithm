SELECT b.Continent, FLOOR(AVG(a.Population))
FROM CITY a INNER JOIN COUNTRY b ON a.CountryCode = b.Code
GROUP BY b.Continent
