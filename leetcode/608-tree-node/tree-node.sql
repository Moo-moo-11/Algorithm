SELECT id, 
       CASE WHEN p_id IS NULL THEN 'Root'
            WHEN id in (SELECT p_id FROM Tree) THEN 'Inner'
            ELSE 'Leaf' End type
FROM Tree