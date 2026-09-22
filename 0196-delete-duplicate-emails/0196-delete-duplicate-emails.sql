# Write your MySQL query statement below
-- DELETE FROM Person
-- WHERE Id NOT IN (
--     SELECT MIN(Id)
--     FROM Person
--     GROUP BY Email

-- );
delete p1 from person p1,person p2 
where p1.email=p2.email and p1.id>p2.id;
