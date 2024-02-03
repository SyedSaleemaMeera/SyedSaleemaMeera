-- Procedures
Select * from MOCK_DATA;

-- 1. Definition:
-- A stored procedure in SQL Server is a precompiled collection of one or more SQL statements or commands that can be saved and executed later. 
-- It allows for the modular organization of SQL code.
-- 2. Purpose:
-- Modularity: Stored procedures promote code modularity and reusability by encapsulating a set of SQL statements into a single unit.
-- Security: Permissions can be granted to execute a stored procedure without granting direct access to underlying tables or data.
-- Performance: Stored procedures are precompiled and cached, leading to potential performance improvements as compared to ad-hoc SQL statements.
------------------------------------------------

Create  or Alter Procedure USP_MockData_Select1
(@ID Bigint)
as
begin
Select * from MOCK_DATA where id = @ID
end

Exec USP_MockData_Select 1000;
----------------------------------------------------------------

Create Procedure USP_MOCKDATA_INSERT
(@Id int,
@FirstName Varchar(20),
@lastName Varchar(20),
@Email Varchar(20),
@Gender Varchar(20)
)
as 
begin
Insert into MOCK_DATA (id,first_name,last_name,email,gender)
Values (@Id,@FirstName,@lastName,@Email,@Gender)
end;



Exec USP_MOCKDATA_INSERT	1001,'Pat','Cummins','pat@gmail.com','Male';
---------------------------------------------------------------
Create Or Alter Procedure USP_MOCKDATA_UPDATE
(@Id int,
@firstName Varchar(20),
@LastName Varchar(20),
@Email Varchar(20),
@Gender Varchar(20))
As 
begin
Update MOCK_DATA Set First_Name = @firstName,Last_Name = @LastName,Email = @Email,Gender = @Gender where id = @ID
End
Exec USP_MOCKDATA_UPDATE 1,'Ramesh','Suresh','RS@gmail.com','Male'
-----------------------------------------------------------------------
Create Or Alter Procedure USP_MOCKDATA_DELETE
(@id int)
As 
begin
Delete From MOCK_DATA where id = @id
End
Exec USP_MOCKDATA_DELETE 1;