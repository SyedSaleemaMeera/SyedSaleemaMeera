Views-------
Select * from Mock_data 

Create View VW_MaleCandidates As 
Select First_Name,Last_Name,Gender 
From Mock_Data 
where Gender = 'Male'

Select * from VW_MaleCandidates

Select * from Students_Joins
Select * from Fee

Create view EnrolledStudents as
Select S.Admission_No,S.First_Name,F.course,F.amount_paid
From Students_Joins S Join Fee F
On S.Admission_No = F.admission_no

Select * from EnrolledStudents

Create View VW_EnrolledStudents As
Select S.First_Name,S.Last_Name,F.course
From Students_Joins S Full Outer Join Fee F
On S.Admission_No = F.admission_no
Select * from VW_EnrolledStudents


Update EnrolledStudents Set First_Name = 'Nile'
Drop View EnrolledStudents
--------------------------------------------------------------------
Select Concat('Deepak','  ','Chahar') as FastBowler
Select * from MOCK_DATA
Select *,Concat(first_Name,'  ',last_name) as "Full Name" from MOCK_DATA


Declare @A Varchar(2) = 'ABC'
Declare @B Int = 20
Print @A/@B

-------------------------------------------------------------------Cast and Convert
--The CAST function will return a value in which data type we want to convert.
SELECT Cast(10.95 as Int) AS Result; 
SELECT CAST(10.95 AS DEC(3, 0)) AS Result;  
SELECT CAST('2021-04-26' AS DATETIME) AS Result;  
Select GETDATE() as Todaysdate
SELECT CAST(GETDATE() AS VARCHAR) AS Result;  
SELECT CAST('Javatpoint' AS INT) AS Result;  --ERROR
SELECT TRY_CAST('Javatpoint' AS INT) AS Result;  
------------------------------------------------------
Create Synonym M_D For Mock_Data


Select * from M_D
Insert into M_D Values ()
Update M_D

------------------------------------------
Select TRANSLATE('Hello Everyone','o','x')
----------------------------------------Replace
Select * from  M_D
Select Id,first_name ,REPLACE(last_name,'B','Bhargav') as "Last_Name" from M_D
------------------------------------------
Select Id from MOCK_DATA WHERE ID <5
intersect
Select CustomerId from Customers
--------------------------
Create Sequence dummyIDSEQ
Start with 1000
Increment By 1000



Create Table Dummy
(Id int,
Name Varchar(20))

Create Sequence Life_Insurance
Start with 10000
increment by 10000


Insert into Dummy Values (Next Value for Motor_Insurance,'Vamshi')
Select * from Dummy
-----------------------------------------------------------------