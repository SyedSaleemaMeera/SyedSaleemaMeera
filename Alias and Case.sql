-- alias and case statements
create table students_case
(id int primary key,
name varchar(20),
score int);
drop table students_case;
select * from students_case;
select id as "RollNo", name as "Student Name",score as "TotalMarks";
select id as "RollNo", name as "Student Name",score as "TotalMarks" ,score/10 as "CGPA" from students_case;
insert into students_case values 
(1,'hari',82),(2,'ammu',92),(3,'akhila',69),(4,'saisree',56),(5,'shanti',45),(6,'pooja',70),
(7,'samreen',36),(8,'sree',75),(9,'akki',83),(10,'divya',90);
-- case statements
select *,
case
when score >60 then 'Pass'
when score =60 then 'justmiss'
when score <60 then 'tatabyebye'
end as 'Result'
from students_case order by score ASC;
select *,
case
when score >=90 then 'A'
when score >=80 then 'B'
when score >=70 then 'C'
when score >=60 then 'D'
when score >=50 then 'E'
else 'Take a Course in Levelup' 
end as "Grades"
from students_Case order by score DESC



