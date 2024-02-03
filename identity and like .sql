create table india
(Aadhar_No bigint primary key  not null auto_increment ,
full_name varchar(30))
select * from india
;insert into india values ('saleema'),('shanthi'),('pooja')
-- like 
;select * from mock_data where first_name like ('A%')
;select * from mock_data where first_name like ('%A')
;select * from mock_data where first_name like ('A%N')
;select * from mock_data where first_name like ('%A%')
;select * from mock_data where first_name like ('%AND%')
;select * from mock_data where first_name like ('%A%N%D%')
;select * from mock_data where first_name like ('%A%N%')
;select * from mock_data where first_name like ('--D-A%')
;select * from mock_data where first_name like ('--D%')
