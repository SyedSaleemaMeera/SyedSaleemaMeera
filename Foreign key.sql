-- foreign key
create table employee_parent
(employee_id int primary key,
emplyoee_name varchar(30),
phone_number bigint ,
DOB date ,
current_ctc bigint);
drop table employee_parent;
select * from employee_parent;
insert into employee_parent values (1,'haritha',1234567898,'2000-04-12',1000000000);
insert into employee_parent values (2,'akhila',1234567298,'2000-02-14',2000000000);
insert into employee_parent values (3,'saisree',1234367898,'2000-03-18',3000000000);
insert into employee_parent values (4,'divya',1234561898,'2000-06-11',5000000000);
insert into employee_parent values (5,'shanti',1234597898,'2000-07-12',8000000000);
insert into employee_parent values (6,'pooja',1234567398,'2000-09-19',900000000);
insert into employee_parent values (7,'samreen',1234567598,'2000-01-30',7000000000);
drop  table employee_experience;
create table employee_experience
(exp_id int primary key,
pre_companyname varchar(40),
pre_salary bigint ,
pre_role varchar(40),
employee_id int,
foreign key (employee_id) references employee_parent (employee_id)
);
select * from employee_parent where employee_id=1;
select * from employee_experience where exp_id=12;
insert into employee_experience values (12,'google',1000000000,'developer',1);
insert into employee_experience values (9,'microsoft',100000000000,'developer',2);
insert into employee_experience values (8,'infosys',8000000000,'developer',3);
insert into employee_experience values (4,'oracle',1999000000,'developer',4);
insert into employee_experience values (11,'mahendra',18888800000,'developer',5);
insert into employee_experience values (10,'deoliet',150000000,'developer',6);
insert into employee_experience values (5,'ibm',1077770000,'developer',7);
select * from employee_parent where id=1;