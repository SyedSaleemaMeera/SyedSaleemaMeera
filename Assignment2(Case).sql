create table Employee
(Emp_id int primary key,
Emp_name Varchar(30),
salary int);
select * from Employee;
insert into Employee values(1,'Haritha',10000),(2,'Divya',6000),(3,'saisree',7000),(4,'Akhila',20000),(5,'Indu',14000),(6,'Sahiti',8000),
(7,'Ashwitha',9000),(8,'Geetha',13000),(9,'Pravalika',11000),(10,'saleema',15000);
select *,
case
when salary between 5000 and 10000 then 0.30*salary
when salary >10000 and 20000 then 0.20*salary
when  salary >20000 then 0.10*salary
end as 'BONUS'
from Employee order by BONUS ASC

