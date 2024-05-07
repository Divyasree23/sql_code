--write a query to find students who have got same marks in Physics and Chemistry.
create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

SELECT student_id, marks
FROM [test].[dbo].[exams]
where subject in ('Physics','Chemistry')
group by student_id,marks
having count(100) = 2;

