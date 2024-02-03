
-- relational operators
select * from mock_data where id=557;
select * from mock_data where id > 900;
select * from mock_data where id>=900;
select * from mock_data where id <900;
select * from mock_data where id <= 900;
select * from mock_data where id !=10;
select * from mock_data where id<>10;
-- logical operators
-- AND, OR, NOT ,BETWEEN ,NOT BETWEEN, IN,NOT IN,LIKE
select * from mock_data where id>557 and gender='Male';
select * from mock_data where id>500 and id<700;
select * from mock_data where id>2000 and id<700; -- error
select * from mock_data where id>2000 or id<700;
select * from mock_data where id<500 and id>300;
select * from mock_data where id<300 and id>500; -- error
select * from mock_data where id<300 or id>300; -- both executed
select * from mock_data where id between 500 and 900;
select * from mock_data where id  not between 10 and 20;
select * from mock_data where id in (101,202,307,999);
select * from mock_data where id  not in (1,3,5,7);
select Distinct Gender from mock_data 



