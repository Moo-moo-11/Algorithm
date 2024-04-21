SELECT IF(b.Grade>= 8,a.Name, 'NULL'), b.Grade, a.Marks
FROM Students a INNER JOIN Grades b ON a.Marks BETWEEN b.Min_Mark and b.Max_Mark
ORDER BY b.Grade DESC, 1, a.Marks
