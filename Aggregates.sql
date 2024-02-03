-- Distinct -- it gives you all the unique data from the column
Select * from ProductQTY ;
Select Distinct Gender From MOCK_DATA1;
-------------------------------------------------
-- Aggregate Functions

Select * from Employee_Procedures Order by salary Desc;
-- Sum()
-- Max()
-- Min()
-- Avg()
-- Count()
Select Sum(Quantity) as "Total Sold" from ProductQty ;
Select Max(Quantity) from ProductQty ;
Select Min(Quantity) From ProductQty;
Select Avg(Quantity) From ProductQty;
Select Sum(quantity)/Count(Quantity) as Average from ProductQty;
Select Count(*) From ProductQty;


-----------------------------------

CREATE TABLE ProductQty(
 Region VARCHAR(100),
 Product VARCHAR(50),
 Year INT,
 Quantity INT
);
Select * from ProductQty;
Select Distinct Product From ProductQty;
INSERT INTO ProductQty (Region, Product, Year, Quantity)
VALUES('East', 'Computer', 2020, 13000),
('South', 'Computer', 2020, 45000),
('North', 'Computer', 2020, 25000),
('East', 'Hard Disk', 2020, 1900),
('West', 'Computer', 2021, 25000),
('South', 'Hard Disk', 2021, 5500),
('West', 'Hard Disk', 2021, 6500),
('East', 'Pen Drive', 2021, 1200),
('North', 'Mouse', 2019, 1600),
('South', 'Pen Drive', 2019, 2700),
('East', 'Mouse', 2019, 2000),
('West', 'Pen Drive', 2019, 1900); 
Select Sum(quantity) from ProductQty ;
Select * from Productqty;
-----------------------
SELECT Region, SUM(Quantity) AS "TotalPurchaseOnARegion"
FROM ProductQty 
GROUP BY Region Order by TotalPurchaseOnARegion desc
;

SELECT YEAR, SUM(Quantity) AS TotalPurchaseForThatYear
FROM ProductQty 
GROUP BY Year order by TotalPurchaseForThatYear Desc;



SELECT Region, Year, SUM(Quantity) AS TotalSales
FROM ProductQty
GROUP BY Region, Year order by Year;

Select Product, Sum(Quantity) as Productwisesales
from ProductQty
Group By Product Order by Productwisesales desc;


Select Product,Sum(quantity) as TotalProductsSold
from ProductQty
Group by Product;

Select Product, Sum(Quantity) as TOTALPRODUCTSSOLD
fROM PRODUCTQTY
Group by Product Order by TOTALPRODUCTSSOLD;


Select Product,Year,Sum(Quantity) as ProductsSoldInAYear
From ProductQty
Group By Product,YEAR Order by YEAR;

Select Product,Region,Sum(Quantity) as ProductsSoldInARegion
From ProductQty
Group By Product,Region Order by Product;


Select Distinct Region from ProductQty
