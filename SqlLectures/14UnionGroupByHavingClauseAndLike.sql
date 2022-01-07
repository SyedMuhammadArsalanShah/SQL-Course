
-- for create databse
create database School1


-- for use database
use school1 
-- for create table 
create table student(
-- identity auto increment primary key not null
Id int identity(1,1) primary key not null,
Name nvarchar(50),
Age varchar(10),
Salary int,
Contact nvarchar(50),
) 


create table faculty(
-- identity auto increment primary key not null
Id int identity(1,1) primary key not null,
Name nvarchar(50),
Age varchar(10),
Salary int,
Contact nvarchar(50),
) 


insert into student(Name,Age,Salary,Contact)values('Laiba',23,100000,0300)
insert into student(Name,Age,Salary,Contact)values('Anas',50,1000,0300)
insert into student(Name,Age,Salary,Contact)values('Adnan',28,200000,0301)
insert into student(Name,Age,Salary,Contact)values('Misbah',28,200000,0301)

insert into faculty(Name,Age,Salary,Contact)values('Talha',23,100000,0300)
insert into faculty(Name,Age,Salary,Contact)values('Anas ',50,1000  ,0300)
insert into faculty(Name,Age,Salary,Contact)values('Harryson',28,200000,0301)
insert into faculty(Name,Age,Salary,Contact)values('Fatimah',28,200000,0301)
--union
select * from student
union
select * from faculty

select * from student
union all
select * from faculty

--group by

select * from student

select count(Id) , Salary from  student group by Salary;



--having

select * from student

select count(Id) , Salary from  student group by Salary having COUNT(ID) <=2;


--like 
SELECT * FROM student
WHERE Name LIKE 'm%';