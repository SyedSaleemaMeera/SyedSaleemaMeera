create table Telugu_movies
(Movie_ID  int primary key,
Movie_Name varchar(30),
Hero_Name varchar(30),
Heroine_Name varchar(30),
Release_Date date,
collection bigint)
select * from Telugu_Movies
;insert into Telugu_Movies
(Movie_ID,Movie_Name,Hero_Name,Heroine_Name,Release_Date,collection )
(0,'orange','Ramcharan','Geneli','2009-01-10',500000),
(1,'RRR','Ramcharan','Alia','2022-09-10',111500000)