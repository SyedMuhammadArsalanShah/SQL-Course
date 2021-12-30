Create table Department
(
     DeptId int identity(1,1) primary key not null,
     DepartmentName nvarchar(50),
     Location nvarchar(50),
     DepartmentHead nvarchar(50)
)


Insert into Department values ( 'FINANCE', 'Karachi', 'Misbah')
Insert into Department values ('PRODUCTION', 'Lahore', 'Laiba')
Insert into Department values ( 'HR', 'Multan', 'Harry')
Insert into Department values ('UNKNOWN', 'Sakkar', 'Anas')

Create table Employee
(
     Id int identity(1,1) primary key not null,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     --DepartmentId int foreign key references tblDepartment(Id)
	 DepartmentId int FOREIGN KEY REFERENCES Department(Id)
)


Insert into Employee values ( 'Ali', 'Male', 40000, 1)
Insert into Employee values ( 'Fatimah', 'Female', 30000, 3)
Insert into Employee values ( 'Muhammad', 'Male', 35000, 1)
Insert into Employee values ( 'Ayesha', 'Female', 45000, 2)
Insert into Employee values ( 'Yusuf', 'Male', 28000, 2)
Insert into Employee values ( 'Hassan', 'Male', 70000, 1)
Insert into Employee values ( 'Maryam', 'Female', 48000, 3)
Insert into Employee values ( 'Moosa', 'Male', 55000, 1)
Insert into Employee values ( 'Haroon', 'Male', 65000, NULL)



--Copy with*Attributes in same databse 
select * into EmployeeCP from Employee
select * from Employee
select * from EmployeeCP


--Copy with*Attributes in other database 
create database school2

select * into school2.dbo.EmployeeCP from Employee
select * from EmployeeCP


--Copy with Selected Attributes in Same database 
select ID,Name,Gender into EmployeeCPS from Employee
select * from EmployeeCPS


Select Employee.Id,Name,Salary,Gender,DepartmentName,Location,DepartmentHead,DepartmentId  into JOINCP
from  Department inner join Employee  
on Employee.DepartmentId= Department.DeptId
select * from JOINCP



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

create table student2(
-- identity auto increment primary key not null
Id int  primary key ,
Name nvarchar(50),
Age varchar(10),
Salary int,
Contact nvarchar(50),
) 
create table faculty1(
-- identity auto increment primary key not null
Id int  primary key not null,
Name nvarchar(50),
Age varchar(10),
Salary int,
Contact nvarchar(50),
) 
select * from student2
insert into student2(Id,Name,Age,Salary,Contact)values(1,'Laiba',23,100000,0300)
insert into student2(Id,Name,Age,Salary,Contact)values(2,'Anas',50,1000,0300)
insert into student2(Id,Name,Age,Salary,Contact)values(3,'Adnan',28,200000,0301)
insert into student2(Id,Name,Age,Salary,Contact)values(4,'Misbah',28,200000,0301)

insert into faculty1(Id,Name,Age,Salary,Contact)values(5,'Talha',23,100000,0300)
insert into faculty1(Id,Name,Age,Salary,Contact)values(6,'Anas ',50,1000  ,0300)
insert into faculty1(Id,Name,Age,Salary,Contact)values(7,'Harryson',28,200000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(8,'Fatimah',28,200000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(9,'jawad',28,300000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(10,'fawad',28,300000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(11,'jawed',28,300000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(12,'fateh',28,300000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(13,'osama',28,10000,0301)
insert into faculty1(Id,Name,Age,Salary,Contact)values(14,'Fatimah',28,10000,0301)








insert into student2 select * from faculty1

insert into student(Id,Name,Age,Salary) select Name,Age,Salary from faculty

insert into student(Name) select Name from faculty where ID=1

