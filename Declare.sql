-- -- -- -- Temp Tables
CREATE TABLE Student_Temp
(  
    id INT Auto_increment PRIMARY KEY,  
    name VARCHAR(50) NOT NULL,  
    gender VARCHAR(20) NOT NULL,  
    age INT NOT NULL,  
    total_marks INT NOT NULL  
 ) ; 

INSERT INTO Student_Temp (name,gender,age,total_marks)
VALUES('Jolly Evans', 'Female', 20, 520),   
('Josh Butler', 'Male', 22, 645),   
('Rose Huges', 'Female', 25, 610),   
('Laura Bennet', 'Female', 18, 430),   
('Alan Simmons', 'Male', 20, 500),   
('Kate Huges', 'Female', 22, 600),   
('Joseph Paul', 'Male', 18, 643),   
('Antonio Butler', 'Male', 23, 513),   
('Diego Bennet', 'Male', 21, 699),   
('Elis Simmons', 'Female', 27, 540); 

select * from Student_Temp;

CREATE TABLE FemaleStudents  
( 
    name VARCHAR(25),  
    age INT,  
    gender VARCHAR (10)  
) ;
INSERT INTO FemaleStudents  
SELECT name, age, gender  
FROM Student_Temp
WHERE gender = 'Female'  ;
Select * from FemaleStudents;
-- --------------------------------
SELECT *  
INTO MaleStudents
FROM Student_Temp
WHERE gender = 'Male'  ;
Select * from MaleStudents;
--------------
DROP TABLE MaleStudents; 
----------
Update FemaleStudents Set age = 22 ;
-- -- ------
declare @V int                      -- Initializing the Variable
Set @V = 100                         -- Assigning a value 
Print @V    ;                       -- printing the Variable
-------------------------------------
Declare @Student Table(    
id int,  
Name varchar(20)  -- Initializing
) 
insert into @Student values(1,'Sourabh Somani')  
insert into @Student values(2,'Shaili Dashora')  
insert into @Student values(3,'Divya Sharma')  
insert into @Student values(4,'Swati Soni') --Assigning Value
Select * from @Student --printing the variable