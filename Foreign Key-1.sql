---Foreign Key
Create Table Employees_Parent (
EmployeeID int Primary Key,------
EmployeeName Varchar(50) Not Null ,
PhoneNumber Bigint Not null Unique,
Current_Salary Varchar(50)
)
Select * from Employees_Parent
Drop Table Employees_Parent
select * from Employees_Parent
Insert into Employees_Parent Values (1,'Manish',8989898987,'60 lakhs')
Insert into Employees_Parent Values (2,'Rakesh',8289898987,'50 lakhs')
Insert into Employees_Parent Values (3,'Mounika',8489898987,'70 lakhs')
Insert into Employees_Parent Values (4,'Rohith',8589898987,'10 lakhs')
Insert into Employees_Parent Values (5,'Sai',8689898987,'60 lakhs')
Insert into Employees_Parent Values (6,'Rishi',87789898987,'80 lakhs')
Insert into Employees_Parent Values (7,'Mani',889898987,'90 lakhs')
Insert into Employees_Parent Values (8,'Rajesh',8969898987,'70 lakhs')



Create Table Employees_Experience (
ID Int Primary Key Identity (1000,10),
Prev_CName varchar(50) not null,
Years_Worked int,
Prev_Salary Varchar(50),
Prev_Role varchar(50),
EmployeeID int Foreign key references Employees_Parent
)
Select * from Employees_Parent;
Select * from Employees_Experience
Insert into Employees_Experience Values ('Wipro',3,50000,'Junior Developer',4)
Insert into Employees_Experience Values ('FaceBook',3,8000000,'Senior Developer',11)
Select * from Employees_Experience;
select * from employees_Parent














Drop Table Employees_experience
Select * from Employees_experience;
Select * from Employees_Parent
insert into Employees_experience values ('Zoho',3,100000,'Developer',1)
insert into Employees_experience values ('LevelUP',1,50000,'Trainer',1)
insert into Employees_experience values ('Intel',1,40000,'Production',2)
insert into Employees_experience values ('Microsoft',3,500000,'HR',2)
insert into Employees_experience values ('Google',3,500000,'Developer',4)
insert into Employees_experience values ('Facebook',3,500000,'Developer',9)
---Rules for Foreign Key
--Primary Key Can be applied only on one column in the parent table
--Only the Primary Key of the parent table can be used as the foreign key in Child Tables
--You should use the exact column name and exact datatype you used in Parent table to create foreign key
--You can enter foreign key details only for the data present in Parent table
--To delete parent table you have to delete all the CHild Tables first


--------------------------------------Countries Example
Create Table Countries
(CountryID int Primary Key,
CountryName Varchar(20)
)
Insert into Countries Values (1,'India'),(2,'Srilanka'),(3,'USA'),(4,'Australia'),(5,'Spain')
Create Table States 
(StateID int Primary Key,
StateName varchar(20),
CountryID int Foreign key references Countries
)


Insert into States Values (1,'Telangana',1),(2,'AP',1),(3,'Karnataka',1),(4,'TamilNadu',1),(5,'Kerala',1)
Insert Into States Values (6,'Colombo',2),(7,'Kandy',2),(8,'California',3),(9,'Sydney',4),(10,'Madrid',5)

Select * from States Where CountryID = 1
Insert into States Values (11,'Dubai',6)

Create Table Cities
(CityID int Primary Key,
CityName Varchar(20),
StateID int Foreign Key References States,
CountryID Int Foreign key references Countries
)

Select * from Cities where CountryID = 1


drop Table Countries