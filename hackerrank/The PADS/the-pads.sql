SELECT CONCAT(Name, '(', SUBSTR(Occupation,1,1), ')')
FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ' , CN, ' ', lower(Occupation), 's.')
FROM
(SELECT Occupation, COUNT(Occupation) CN
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY CN, Occupation
) a;
