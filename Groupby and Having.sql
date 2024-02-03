create table productQty
(Region Varchar(20),
Product varchar (40),
Year int,
Quantity int);

insert into productQty (Region,Product,Year,Quantity) values
('East','Computer',2019,22000),
('west','pendrive',2021,12000),
('south','mouse',2020,42000),
('East','Computer',2019,26000),
('north','Computer',2021,72000),
('south','mouse',2020,22000),
('west','harddisc',2019,28000),
('East','Computer',2019,22000),
('north','Computer',2020,27000),
('north','harddisc',2019,122000),
('south','Computer',2019,52000),
('north','Computer',2021,62000),
('west','mouse',2019,78000),
('south','Computer',2020,26500),
('East','Computer',2021,22000),
('west','pendrive',2020,4500);

select * from ProductQty;

select sum(Quantity) from ProductQty;
select max(Quantity) from ProductQty;
select min(Quantity) from ProductQty;
select avg(Quantity) from ProductQty;
select count(Quantity) from ProductQty;
select sum(Quantity)/count(Quantity) from ProductQty;

-- GROUP BY
select Region,sum(Quantity) from ProductQty 
Group By Region;

select Year,sum(Quantity) from ProductQty 
Group By Year;

select Product,sum(Quantity) from ProductQty 
Group By Product;

select Product,sum(Quantity) as 'RegionWiseSales'
from ProductQty 
Group By Product
Order By RegionWiseSales ASC;

select Product,sum(Quantity) as 'RegionWiseSales'
from ProuductQty 
where Quantity<5000
Group By Product
Order By RegionWiseSales DESC;

select Year,Region,sum(Quantity) 
from ProductQty 
where Quantity<5000
Group By Product
Having Region='East'
Order By YearRegionWiseSales ASC;

