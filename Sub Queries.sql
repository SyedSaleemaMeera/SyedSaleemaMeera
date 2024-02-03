--Sub Queries
--Nested Queries

--A Query Inside a Query

Update Tab_Name Set Physics = (Select Physics from Subjects where Id = 1)
--Select * from Table_name where id in (Select Id from Table_Name where Department = 'HR')


Create Table Customers
(CustomerId int Primary Key,
CustomerName Varchar(20),
Country varchar(20))
Select * from Customers

Insert into Customers Values (1,'Sandhya','USA'),(2,'Manish','Spain'),(3,'Sateesh','India')

Create Table Orders 
(Orderid int Primary Key,
CustomerID int Foreign key references Customers,
Order_Date date,
amount int)

Insert into orders Values (101,2,'2023-09-02',1000),
(102,2,'2023-08-02',5000),
(103,1,'2023-09-10',2000),
(104,3,'2023-06-02',3000)
Insert into Customers Values (4,'Vishnu','Australia')

Select * from Customers
Select * from Orders
--To Retrieve CustomerName Using OrderID
Select CustomerName From Customers where CustomerId = (Select CustomerId from Orders where Orderid = 102)
--All customers with atleast one order
Select CustomerName From Customers c where EXISTS (Select * from Orders O where O.CustomerID = C.CustomerId)
Select * from Customers
Select * from orders
----------------------------
Select C.CustomerName, (Select Count(*) from Orders O Where O.CustomerID = C.CustomerId) as "Order Count "from Customers C
----------------------------------
Select C.CustomerName,(Select AVG(Amount) from Orders O where C.CustomerId = O.CustomerID) as "Average"
From Customers C
-----------------------------------------
Select C.CustomerName,O.Orderid,O.amount, O.Order_Date
From Customers C Join Orders O
On C.CustomerId = O.CustomerID
where O.amount > (Select Avg(amount) from Orders)
------------------------------------------
Select C.CustomerName,O.Orderid,O.amount, O.Order_Date
From Customers C Join Orders O
On C.CustomerId = O.CustomerID
where amount > 500 and O.Order_Date Between '2023-08-01' and '2023-09-28'

