Select * from Student_functions
Select * from Subjects


--Inner Join 
--Full Outer Join 
--Left outer Join
--Right Outer Join
--Self Join
--Cross Join 

--Ansi Joins(Inner Join,Full Outer Join,Left Outer Join,Right Outer Join)
--Non Ansi Joins(Self Join , Cross Join)

--Ansi Join --'On' keyword 
--Non Ansi -- 'Where' Clause

Select S1.RollNo,S1.Name,S1.TotalMarks,S2.RollNo,S2.Maths,S2.Chemistry,S2.Physics
From Student_Functions S1  Inner Join Subjects S2
On S1.RollNo = S2.RollNo


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

Select S.Admission_No,S.First_Name,S.Last_Name,F.course,F.amount_paid
From Students_Joins S Inner Join Fee F
On S.Admission_No = F.admission_no

Select * from Students_Joins
Select * from Fee
Select S.Admission_No,S.First_Name,S.Last_Name,F.admission_no,F.course,F.amount_paid
From Students_Joins S Full Outer Join Fee F
On S.Admission_No = F.admission_no

Select S.Admission_No,S.First_Name,S.Last_Name,F.course,F.amount_paid
From Students_Joins S Left Outer Join Fee F
On S.Admission_No = F.admission_no

Select S.Admission_No,S.First_Name,S.Last_Name,F.course,F.amount_paid
From Students_Joins S Right outer Join Fee F
On S.Admission_No = F.admission_no







