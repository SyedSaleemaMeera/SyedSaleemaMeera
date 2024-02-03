
--Ansi Join--Joins which use 'On' keyword is called Ansi Joins
--Inner Join 
--Left outer Join 
--*Right Outer Join 
--*Full Outer Join
--------------------------------------------------------
--Non Ansi Join -- which uses where clause
--Self Join 
--Cross Join
------------------------------------------------------
Create Table Students_Joins (
  Admission_No int Primary key identity (1000,1),  
  First_Name varchar(45) NOT NULL,      
  Last_Name varchar(45) NOT NULL,  
  Age int ,  
  City varchar(25) NOT NULL      
);    
  
CREATE TABLE Fee (   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid int 
);  

INSERT INTO Students_Joins ( first_name, last_name, age, city)       
VALUES ('Luisa', 'Evans', 13, 'Texas'),       
( 'Paul', 'Ward', 15, 'Alaska'),       
('Peter', 'Bennett', 14, 'California'),    
('Carlos', 'Patterson', 17, 'New York'),       
('Rose', 'Huges', 16, 'Florida'),  
('Marielia', 'Simmons', 15, 'Arizona'),    
('Antonio', 'Butler', 14, 'New York'),       
('Diego', 'Cox', 13, 'California');  
  Select * from Students_Joins 
INSERT INTO Fee (admission_no, course, amount_paid)       
VALUES (1001,'Java', 20000),       
(1003, 'Android', 22000),       
(1005, 'Python', 18000),    
(1007,'SQL', 15000),       
(5112, 'Machine Learning', 30000); 
select * from Students_Joins;
Select * from Fee;

---------------------------------------------------------------------------
Select * from Students_Joins
Select * from Fee
Select S.Admission_No,S.First_Name,s.Last_Name,s.Age,s.City,f.admission_no,f.amount_paid,f.course
From Students_Joins S Inner Join Fee F
On S.Admission_No = F.admission_no

----------------------------------------------------------------------
Select S.Admission_No,S.First_Name,s.Last_Name,s.Age,s.City,f.admission_no,f.amount_paid,f.course
From Students_Joins S Full Outer Join Fee F
On S.Admission_No = F.admission_no
----------------------------------
Select S.Admission_No,S.First_Name,s.Last_Name,s.Age,s.City,f.admission_no,f.amount_paid,f.course
From Students_Joins S left Outer Join Fee F
On S.Admission_No = F.admission_no
-----------------------------------------
Select S.Admission_No,S.First_Name,s.Last_Name,s.Age,s.City,f.admission_no,f.amount_paid,f.course
From Students_Joins S Right Outer Join Fee F
On S.Admission_No = F.admission_no
------------------------------------------------------------------
Select s.Admission_No,s.First_Name,f.course,f.amount_paid
From Students_Joins s Cross Join Fee f
where course = 'Python'
----------------------------------------
Select * from Students_Joins
Select * from Students_Joins


Select S1.First_Name,S2.City,S1.Admission_No
From Students_Joins S1, Students_Joins S2
where S1.City = S2.City and S1.Admission_No <> S2.Admission_No
-----------------------------------------------------