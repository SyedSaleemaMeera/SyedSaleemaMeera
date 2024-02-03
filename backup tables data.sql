select * from students_case;
alter table students_case add results varchar(20);
update students_case set results=
case
when score >60 then 'pass'
when score =60 then 'just pass'
else 'failed'
end;
delete from student_case;
create table backup_table
(id int primary key,
name varchar (20),
score int,
results varchar(20));
insert into backup_table select * from students_case;
insert into backup_table (id,name,results) select id,name,results from students_case;
select * from backup_table;
delete from backup_table;
create table placement_result
(id int,
name varchar(20),
placement_results varchar(40));
select * from placement_result;
insert into placement_result(id,name,result) 
select id,name ,
case 
when 'pass' then 'congrats you are got placed'
when 'just pass ' then 'you are in waitlisted'
when 'failed' then 'you are not placed'
end
from students_case;









