SELECT a.Start_Date, b.End_Date
FROM
(SELECT Start_Date, RANK() OVER (ORDER BY Start_Date) AS rn
FROM Projects
WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) a JOIN
(SELECT End_Date, RANK() OVER (ORDER BY End_Date) AS rn
FROM Projects
WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) b ON a.rn = b.rn
ORDER BY DATEDIFF(b.End_Date, a.Start_Date), a.Start_Date
