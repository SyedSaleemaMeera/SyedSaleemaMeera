Create or alter Procedure USP_MockData_CRUD
(@id int,
@FirstName Varchar(50),
@LastName Varchar(50),
@Email Varchar(50),
@Gender Varchar(50),
@Operation Varchar(50) = '')
As
Begin 
if @Operation = 'Insert'
begin
Insert into MOCK_DATA (ID,first_name,last_name,email,gender)
VALUES (@id,@FirstName,@LastName,@Email,@Gender)
end
else if @Operation = 'Select'
begin 
Select * from MOCK_DATA WHERE ID = @id
end
else if @Operation = 'Update'
begin 
Update MOCK_DATA Set first_name = @FirstName,last_name = @LastName,email = @Email,gender = @Gender
where id = @id
end
else if @Operation = 'Delete'
begin 
Delete from MOCK_DATA where id = @id
end
end
Select Max(id) from MOCK_DATA
EXEC USP_MockData_CRUD 1003,'Harry','Potter','H@gmail.com','Male','Select'

Select * from Employees;


Create Procedure GetTotalSalary
(@TotalSalary int Output)
as 
begin 
Set Nocount ON;
Select @TotalSalary = Sum(salary) from employees
end


Declare @TotalSalary int
Exec GetTotalSalary @TotalSalary output
print @totalsalary;
