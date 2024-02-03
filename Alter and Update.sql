-- ALTER DDL
alter table mock_data add phone_number int;
select * from mock_data;
alter table mock_data add DOB date;
alter table mock_data drop  column DOB;
alter table mock_data  add column phone_number bigint;
-- UPDATE SINGLE COLUMN AND SINGLE ROW
UPDATE mock_data SET first_name = 'meera' WHERE id = 1;
select * from mock_data where id=1;
update mock_data set phone_number =9493229328 where id =1;
alter table mock_data add column phone_number bigint;
-- UPDATE MULTIPLE COLUMNS ON SAME ROW
update mock_data set phone_number =8639268823,first_name='syed',last_name='meera' where id =9;
-- UPDATE MULTIPLE COLUMNS AND MULTIPLE ROWS
update mock_data set phone_number =8639268823,first_name='syed',last_name='meera' where id in (9,10,11,3,4);
select * from mock_data where id in (9,10,11,3,4);