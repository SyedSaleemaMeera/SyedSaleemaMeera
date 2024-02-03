
---Case Statements
Update Mock_data set first_name = Null where id in (1,3,5)
--One Condition--Where Clause
--Multiple Conditions--Logical Operators--And/Or/Not
--It Tests a List of Conditions and returns one of multiple Possible Results

Create Table Student_Marks(
ID Int Primary Key,
Name Varchar (50),
Score int,
)
select * from student_marks
Insert into Student_Marks Values (1,'Manish',87)
Insert into Student_Marks Values (2,'Suba',60)
Insert into Student_Marks Values (3,'Srikanth',70)
Insert into Student_Marks Values (4,'Varun',32)
Insert into Student_Marks Values (5,'Rohith',66)
Insert into Student_Marks Values (6,'Krishna',44)
Insert into Student_Marks Values (7,'Hari',88)
Insert into Student_Marks Values (8,'Kanishka',92)
Insert into Student_Marks Values (9,'Nikesh',25)
Insert into Student_Marks Values (10,'Sneha',83)







--- Column Alias (Temporary Name)to Columns 
Select Id as "Roll No", Name As "Student Name",Score as "Total Marks" from Student_Marks order by "Total Marks" Desc
--Creating new Temporary Column
Select * from Student_Marks
Select Id as "RollNo",Name As "StudentName",Score as "Total Marks",Score/10 as "CGPA" from Student_Marks


Select * from Student_Marks
---
SELECT *,
  CASE
    WHEN score >= 94 THEN 'A+'
    WHEN score >= 90 THEN 'A'
    WHEN score >= 87 THEN 'B+'
    WHEN score >= 83 THEN 'B'
    WHEN score >= 80 THEN 'B-'
    WHEN score >= 77 THEN 'C+'
    WHEN score >= 73 THEN 'C'
    WHEN score >= 70 THEN 'C-'
    WHEN score >= 67 THEN 'D+'
    WHEN score >= 60 THEN 'D'
	When Score >= 50 then 'E'
    Else 'Failed'
  END AS "Grade"
FROM Student_Marks Order by Score DESC


Select *,
Case 
when Score > 60 then 'Congrats you passed'
When Score = 60 then 'Just Pass'
Else 'Take a course in Level Up'
End as "Results"
From Student_Marks order by Score Desc





Select *,
Case
When Score > 60 Then 'Passed'
When Score = 60 then 'Just Passed'
Else 'Failed'
End as "Result"
From Student_Marks Order by Score Desc

Select * from Student_Marks

----------------------------------------------
Select * from Student_Marks order by id
Select id,Name,score from Student_Marks order by Score asc



SELECT Name,
  CASE
    WHEN score >= 94 THEN 'A+'
    WHEN score >= 90 THEN 'A'
    WHEN score >= 87 THEN 'B+'
    WHEN score >= 83 THEN 'B'
    WHEN score >= 80 THEN 'B-'
    WHEN score >= 77 THEN 'C+'
    WHEN score >= 73 THEN 'C'
    WHEN score >= 70 THEN 'C-'
    WHEN score >= 67 THEN 'D+'
    WHEN score >= 60 THEN 'D'
    ELSE 'No Placements'
  END AS "Grade"
FROM Student_Marks 
-----------------------------------------
SELECT Name,
  CASE
    WHEN score >= 94 THEN 'A+'
    WHEN score >= 90 THEN 'A'
    WHEN score >= 87 THEN 'B+'
    WHEN score >= 83 THEN 'B'
    WHEN score >= 80 THEN 'B-'
    WHEN score >= 77 THEN 'C+'
    WHEN score >= 73 THEN 'C'
    WHEN score >= 70 THEN 'C-'
    WHEN score >= 67 THEN 'D+'
    WHEN score >= 60 THEN 'D'
    ELSE 'F'
  END AS "grade",
  COUNT(*) AS "Number_of_Students"
FROM Student_Marks
GROUP BY Score
ORDER BY grade Asc;
---------------
SELECT *,
  CASE
    WHEN score > 60 THEN 'Passed'
	when score = 60 then 'Just Pass'
    ELSE 'Failed'
  END AS Result
FROM Student_Marks order by Score desc
-------------------------------------
Alter table Student_Marks add Result varchar(50)
Update Student_Marks Set Result = 
Case 
when Score > 60 then 'Passed'
when Score = 60 then 'Bach Gaya'
Else 'Take a course in level up'
End
Select * from Student_Marks order by score desc



---------------------
Create Table Student_results(
RollNo int,
Result Varchar(50),
)








			
Alter table Student_Marks Add Results VArchar(50)
Select * from Student_Marks
  UPDATE Student_Marks
    SET Results =
            CASE 
            WHEN Score > 60 THEN 'Passed'
			when score = 60 then 'Just Passed'


                 ELSE 'Failed'
            END
			Select * from Student_marks
