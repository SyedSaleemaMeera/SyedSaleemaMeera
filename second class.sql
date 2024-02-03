create table Friends
(name varchar(30),
id int primary key not null auto_increment,
phonenumber bigint,
email varchar(30),
date_of_birth date)
select * from friends;
drop table Friends;
insert into Friends values('meera',1,6789067890,'saleemameera345@gmail','2002-03-03');
drop table Friends ;
insert into Friends values('meera',1,6789067890,'saleemameera345@gmail','2002-03-03');
insert into Friends values('shanthi',2,6789067890,'saleemameera345@gmail','2002-03-03');
insert into Friends values('shami',3,6789067890,'saleemameera345@gmail','2002-03-03');
insert into Friends values('akhila',4,6789067890,'saleemameera345@gmail','2002-03-03');
insert into Friends values('saisree',5,6789067890,'saleemameera345@gmail','2002-03-03');
------------------
insert into Friends values 
('meera',16,6789067890,'saleemameera345@gmail','2002-03-03'),
('meera',1,6789067890,'saleemameera345@gmail','2002-03-03'),
('meera',11,6789067890,'saleemameera345@gmail','2002-03-03');
----------------
select * from friends;
insert into Friends(name ,phonenumber,date_of_birth ) values('saleema',6789067890,'2002-03-03');
-------------------
select name,id from Friends;
select name,id from Friends where id=4;
delete from friends where id=16;
delete from friends;


