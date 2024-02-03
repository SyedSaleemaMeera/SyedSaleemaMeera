
Create table Subjects (
RollNo Int Foreign key References Student_Functions,
Maths int,
Physics int,
Chemistry int);
Insert into Student_Functions Values (1,'Vishnu',100);
Insert into Student_Functions Values (2,'Revi',30);
Insert into Student_Functions Values (3,'Mamakutty',40);
Insert into Student_Functions Values (4,'Uthaman',60);
Insert into Student_Functions Values (5,'Basker',80);
Insert into Subjects Values(1,40,30,30);
Insert into Subjects Values(2,10,10,10);
Insert into Subjects Values(3,20,10,10);
Insert into Subjects Values(4,20,20,20);
Insert into Subjects Values(5,40,20,20);

Select * from Student_Functions;
Select * from Subjects;



Create Or Alter Function UDF_getTotalMarks
(@RollNo int)
Returns int
As
Begin 
Return (Select TotalMarks from Student_Functions where RollNo = @RollNo)
end
print dbo.UDF_gettotalmarks(1);

Select * from Student_Functions;
Select * from Subjects
;
Create or Alter Function UDF_GetPhyMarks
(@Name varchar(20))
Returns int
As 
begin 
Declare @rno int
Select @rno =  Rollno from Student_Functions where name = @Name
return (Select Physics from Subjects where RollNo = @rno)
end

print dbo.udf_getphymarks('Mamakutty')

Create Or Alter Function UDF_GetAll
(@RollNo int)
Returns Table
as
return(Select * from Subjects where RollNo	= @Rollno)

Select * from UDF_GetAll(5)