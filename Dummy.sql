create table Dummy
(id int primary key ,
name varchar(20))
select * from Dummy
;insert into Dummy values(1,'Ammu'),(2,'Saleema')
;drop table Dummy
;DELETE FROM Dummy 
WHERE
    id = 2
;DELETE FROM Dummy 
WHERE
    name = 'saleema'
;insert into dummy(id,name) values(1,'ammu'),(2,'saleema')