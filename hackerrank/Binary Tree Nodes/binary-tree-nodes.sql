SELECT N, CASE WHEN (a.P IS NULL)  THEN 'Root'
                            WHEN (b.CN IS NULL) THEN 'Leaf'
                            ELSE 'Inner' END
FROM BST a LEFT JOIN (SELECT P, COUNT(P) CN FROM BST
                                        WHERE P IS NOT NULL GROUP BY P) b ON a.N=b.P
ORDER BY N
