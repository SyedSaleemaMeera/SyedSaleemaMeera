Select * from students_case;
-- -- -- -- -- -- -- -- ------------------------
Select * from BackUP_Table;

Select * Into BackUP_Table from students_case;

Delete from BackUP_Table ;
Insert into BackUP_Table Select * from students_case;
Insert into BackUP_Table (Id,Name) Select Id,Name From students_case ;


Select * from BackUP_Table;

--------------------------------------------
-- Drop
-- Delete
-- Truncate
-- Transactions

Begin;
Update BackUP_Table Set Name = 'Meera';
Commit;
Rollback;
Select * from BackUP_Table;

Begin ;
Drop Table BackUP_Table;

Begin ;
Truncate Table BackUp_Table ;

Rollback;

Begin;
Delete From BackUp_Table where id = 1;

