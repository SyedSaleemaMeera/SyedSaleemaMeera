Select *,
CASE
When Score > 60 then 'Passed'
When Score = 60 then 'Just Passed'
When score < 60 then 'failed'
end as "Results"
From students_case order by score desc;
update students_case set score=60 where id=10;
alter table students_case add Result varchar(50);

Select *from students_case;

Update students_case Set Result = 
Case 
When Score > 60 then 'Passed'
When Score = 60 then 'Just Passed'
When score < 60 then 'failed'
end;

Select * from students_case;

Create Table Placement_results
(ID int,
Name varchar(50),
Placement_result varchar(50)
);

Insert into Placement_results (Id,Name,Placement_result)
Select id,name, 
Case Result
When 'Passed' then 'Congrats Welcome to our company'
When 'Just Passed' then 'We will get back to you'
When 'Failed' then 'Take a course in Level Up'
End
from students_case;

Select * from Placement_results;