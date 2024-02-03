create table customer_constraints
(customer_id int primary key,
customer_name varchar(40) not null,
phone_number bigint unique not null,
age int check (age>=18));
select * from customer_constraints;
insert into customer_constraints values(1,'meera',8639268823,21);
-- Dropping Constraints
alter table customer_constraints drop constraint ck_age;
alter table customer_constraints drop constraint pk_customer_idcustomer_id;
alter table customer_constraints drop constraint uk_customer_phone_number;
drop table customer_constraints;
-- Adding Constraints
alter table customer_constraints add constraint pk_customer_id primary key (customer_id);
alter table customer_constraints add constraint uk_customer_phone_number unique (phone_number);
alter table customer_constraints add constraint ck_age check (age>=18);
update customer_constraints set age=19 where id =1 ;
select * from customer_constraints
