# Write your MySQL query statement below
-- DELETE p1
-- FROM Person p1
-- JOIN Person p2
-- ON p1.email=p2.email
-- AND p1.id > p2.id;
SELECT today.id
FROM Weather yesterday 
CROSS JOIN Weather today

WHERE DATEDIFF(today.recordDate,yesterday.recordDate) = 1
    AND today.temperature > yesterday.temperature
;
-- CREATE TABLE Person (
--     id INT PRIMARY KEY,
--     email VARCHAR(100)
-- );
-- DELETE p1
-- FROM Person p1
-- JOIN Person p2
-- ON p1.email=p2.email
-- AND p1.id > p2.id;