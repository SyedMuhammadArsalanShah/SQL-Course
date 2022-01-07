-- *******************01CreateDatabase&Table*******************



-- for create databse
create database School


-- for use database
use school 
-- for create table 
create table info(
-- identity auto increment primary key not null
Id int identity(1,1) primary key not null,
Name nvarchar(50),
Age varchar(10),
Salary int,
Contact nvarchar(50),
) 




-- *******************02SelectInsertDeleteUpdate*******************

--SELECT QUERY
--
-- SELECT * FROM table_name
select * from info

--SELECT column1, column2, ... FROM table_name;
SELECT Name from info



-- INSERT QUERY
--Insert Query  with & without  coloumn name and selected coloumn

-- with out column name
-- INSERT INTO table_name VALUES (value1, value2, value3, ...)
insert into info values('Laiba',23,100000,0300)


-- with column name  INSERT INTO table_name (column1, column2, column3, ...)VALUES (value1, value2, value3, ...)
insert into info(Name,Age,Salary,Contact)values('Laiba',23,100000,0300)
insert into info(Name,Age,Salary,Contact)values('Anas',50,1000,0300)
insert into info(Name,Age,Salary,Contact)values('Adnan',28,200000,0301)


-- selected column name
insert into info(Name,Age)values('Misbah',20)



-- UPDATE QUERY


-- Updated Query  
update info set Name ='Arsalan' ,Age =50 Where Id =8
-- DELETE QUERY
Delete  from info where Id =6





-- *******************03Asc&Desc_IsNull&IsNotNull*******************
-- asc/desc order

select * from info order by Name Asc
select * from info order by Name desc


--is not null / is null (select * from table name where column name IS NULL  )
--is null 
select * from info where Contact is  null
-- is not null
select * from info where Contact is not null

select * from info where ( Contact is not null or Name  is not null)
select * from info where ( Contact is  null And  Name  is null or Age is not  null    ) 
select * from info where( Contact is null And Id is null  And Age >= 28  )




-- *******************04AndOrNot*******************

----Operators ( AND, NOT ,OR) WITH WHERE CLAUSE
-- OR
select * from info where (Name='Misbah' Or Age =23)
--And
select *from info where (Name='Misbah' And Age =20 And Id=13)


--Not 
select * from info where Not Name ='Misbah'




-- *******************05Alter,Drop&Truncate*******************


-- Alter QUERY
--Alter(Add) 
--ALTER TABLE table_name ADD column_name datatype
alter table info
add Address varchar(50)

alter table info
add Address varchar(50), Location nvarchar(50)
--Alter (drop) 
--ALTER TABLE table_name DROP COLUMN column_name
alter table info drop column Address
alter table info drop column Address ,Location

-- Alter(modify)
--ALTER TABLE table_name ALTER COLUMN column_name datatype
alter table info
alter column Address int

--Drop QUERY
--DROP TABLE table_name;
Drop table info
---- Truncate QUERY
--TRUNCATE TABLE table_name;
truncate table info


--note You can do multiple ADD or multiple DROP COLUMN, but just one ALTER COLUMN.



---- *******************06SqlFuntions*******************
--Aggregate Fucntion
Use School
--Sum
select   SUM(Salary) from info
select  SUM(Salary) AS 'Faculty Salary 'from info
--Count
select  Count(Salary) from info
select  Count(Salary) AS 'Faculty Salary 'from info
--Avg
select  Avg(Salary) from info
select  Avg(Salary) AS 'Faculty Salary 'from info
--min
select  Min(Salary)from info
select  Min(Salary) AS 'Faculty Salary 'from info
--Max
select  Max(Salary) from info
select  Max(Salary) AS 'Faculty Salary 'from info

--Scalar Function
--Lower
Select Name, LOWER(Name) from info
Select Name, LOWER(Name) As' Lower Case' from info
--Upper
Select Name, Upper(Name) from info
Select Name, Upper(Name) As 'Upper Case' from info
--len
Select Name, Len(Name) from info
Select Name, Len(Name) as 'Name Length' from info
--substring
Select Name, SUBSTRING(Name,3,2) from info
Select Name, SUBSTRING(Name,3,2) AS ' mid value' from info
--Round
Select Salary, Round(Salary,0.0) from info
Select Salary, Round(Salary,0.0) AS 'Round Value' from info
--get date
select getdate() 
--format
select FORMAT(Salary,'000,000') from info
select FORMAT(Salary,'000,000') AS 'Salary Format'from info





---- *******************07SqlDataType*******************

--Numeric Data types
declare @aa tinyint
set @aa = 255
select @aa

declare @bb smallint
set @bb = -400
select @bb

declare @cc int
set @cc = -5260
select @cc

declare @dd bigint
set @dd = -5260
select @dd AS 'Bigint'

declare @ee bit
set @ee = null
select @ee

declare @ff decimal(7,2)
set @ff = 255.121239
select @ff

declare @gg numeric(7,2)
set @gg = 255.129
select @gg

declare @nn money
set @nn = 25678567856785.129
select @nn


--Text Data Types
declare @hh nvarchar(77)
set @hh = N'????'
select @hh

declare @ii smallmoney
set @ii = 214112
select @ii

declare @jj char(77)
set @jj = 'asdfasd'
select @jj

declare @kk nchar(77)
set @kk = '????'
select @kk

declare @ll varchar(77)
set @ll = 'asdf asdf asdf '
select @ll

declare @mm nvarchar(77)
set @mm= N'????'
select @mm


--date types

declare @oo Date
set @oo = getDate()
select @oo

declare @pp Date
set @pp = '12-12-2009'
select @pp

declare @qq time
set @qq = '12:12:12'
select @qq


--Approximate numeric 
declare @rr float
set @rr = 12.12123123123
select @rr

declare @ss real
set @ss = 12.12123123123
select @ss



-- *******************08SqlMisbahPrep*******************

DECLARE @CHECK INT  SET @CHECK =5
-- EVEN ODD PROGRAM
IF (@CHECK %2=0)
Select 'EVEN' + CONVERT(VARCHAR,@CHECK)  aS 'NUMBER' 
ELSE
Select 'ODD' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'

-- POSITIVE AND NEGATIVE  PROGRAM
IF (@CHECK >0)
Select 'POSITIVE' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'
ELSE
Select 'NEGATIVE' +  CONVERT(VARCHAR,@CHECK)aS 'NUMBER'

 --FACTORIAL PROGRAM
DECLARE @Counter INT ,@FACT INT 
SET  @FACT=1
SET @Counter=1
WHILE ( @Counter < @CHECK)
BEGIN
    SET @Counter  = @Counter  + 1
	SET @FACT = @FACT *@Counter
END
SELECT 'The FACTORIAL  value ' + CONVERT(VARCHAR,@CHECK) + ' is = ' + CONVERT(VARCHAR,@FACT) aS 'FACTORIAL NUMBER'


   -- SOME NOTE 
  --BEGIN ,END 
  --BEGIN FOR START BLOCK
  --END FOR CLOSE BLOCK 
  --The CONVERT() function converts a value (of any type) into a specified datatype.
  --CONVERT(data_type(length), expression)




  -- *******************09SqlConstraints&Operators*******************
--constraints in sql
--SQL constraints are used to specify rules for data in a table.
 --PPRIMARY KEY, Identity (auto_increment), FOREIGN KEY , unique, not null, default,

create table info1(
-- identity auto increment primary key not null
Id int identity(1,1) primary key not null,
Name nvarchar(50),
Date Date default getdate(),
Salary int,
Contact nvarchar(50) Unique,
) 


--Operator in SQL
--Arithmetic operators

select 10 + 10
select 10 - 10
select 10 * 10
select 10 / 10
select 10 % 10

--SQL Comparison Operators
--= ,<>, <, <=,>,>=
declare @a int
set @a =10
select @a where 10 <> 20


--Command Operator a=a+10 (a+=10)
declare @b int
set @b = 10
set @b +=10 -- = 10+10
select @b




-- *******************10SqlMPrimeTask*******************

DECLARE @i INT, @num int, @Prime bit
SET  @i=2
set @Prime=1
set @num=7 --here is your insert value 
WHILE ( @i < @num)
BEGIN


    IF(@num % @i = 0) 
	
	BEGIN

    SET @Prime =0
	BREAK
	END
    SET @i = @i+ 1


END
    --If is Prime is 1 then the number is prime else not
IF (@Prime=1) 
BEGIN
print 'is a Prime Number ' + CONVERT(VARCHAR,@num)
END
ELSE	 
BEGIN
print 'is not a Prime Number ' + CONVERT(VARCHAR,@num)
END
--some prime numbers
--2 3 5 7 11 13 17 19 23
/*
Break Statement is a loop control statement
that is used to terminate the loop.
As soon as the break statement is encountered from 
within a loop, the loop iterations stop there, 
and control returns from the loop immediately 
to the first statement after the loop.
*/




-- *******************11SqlSubQuery*******************
-- SubQuery

select Salary from info  --outer query
where Salary >=  (select max(salary) from info) --inner query

select max(salary) from info
where Salary < (select max(salary) from info)










-- *******************12SqlJoins*******************
Create table Department
(
     Id int identity(1,1) primary key not null,
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

--JOIN OR INNER JOIN
SELECT Name, Gender, Salary, DepartmentName,DepartmentHead
FROM Employee
INNER JOIN Department
ON Employee.DepartmentId = Department.Id

--LEFT JOIN OR LEFT OUTER JOIN

SELECT Name, Gender, Salary, DepartmentName,DepartmentHead
FROM Employee
LEFT OUTER JOIN Department
ON Employee.DepartmentId = Department.Id

--RIGHT JOIN OR RIGHT OUTER JOIN

SELECT Name, Gender, Salary, DepartmentName,DepartmentHead
FROM Employee
RIGHT OUTER JOIN Department
ON Employee.DepartmentId = Department.Id

--FULL JOIN OR FULL OUTER JOIN
SELECT Name, Gender, Salary, DepartmentName,DepartmentHead
FROM Employee
FULL OUTER JOIN Department

ON Employee.DepartmentId = Department.Id




-- *******************13SelfJoins*******************
Create database  Family 
use Family

CREATE TABLE FAMILY 
(Id int primary key IDENTITY(1,1) NOT NULL,
Name varchar(20) ,
DateOfBirth  date ,
FatherName int ,
CONSTRAINT FatherName FOREIGN KEY(FatherName)  REFERENCES Family(Id))



insert into FAMILY (Name,DateOfBirth)values('Muhammad','2001-5-11')
insert into FAMILY (Name,DateOfBirth,FatherName)values('Ahmed','2001-5-11',1)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Hamid','2001-5-11',2)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Mahmood','2001-5-11',2)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Ali','2001-5-11',3)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Talha','2001-5-11',4)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Zubair','2001-5-11',5)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Zahid','2001-5-11',5)






select * from family


select a.name as'Name' , b.name as 'Father Name' from Family a inner join Family b on a.FatherName=b.Id;

select a.name as'Name' , b.name as 'Father Name' from Family a ,Family b where  a.FatherName=b.Id;




-- *******************14UnionGroupByHavingClause*******************
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




-- *******************15CASE Statement*******************

Declare @aa int
set @aa=3
select 
case @aa
when 1 then 'the value is one'
when 2 then 'the value is two'
when 3 then 'the value is three'
else 'invalid'
end


select name, salary,
CASE 
when Salary >=1000 And Salary <=10000 then'new teacher'
when Salary >=100000 And Salary <=200000 then'Senior teacher'
else ' Most Senior teacher'
end as Category from faculty 



-- *******************16 Select into & insert into select statement*******************

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
insert into student(Name,Age,Salary,Contact)values('Laiba',23,100000,0300)
insert into student(Name,Age,Salary,Contact)values('Anas',50,1000,0300)
insert into student(Name,Age,Salary,Contact)values('Adnan',28,200000,0301)
insert into student(Name,Age,Salary,Contact)values('Misbah',28,200000,0301)

insert into faculty(Name,Age,Salary,Contact)values('Talha',23,100000,0300)
insert into faculty(Name,Age,Salary,Contact)values('Anas ',50,1000  ,0300)
insert into faculty(Name,Age,Salary,Contact)values('Harryson',28,200000,0301)
insert into faculty(Name,Age,Salary,Contact)values('Fatimah',28,200000,0301)
insert into faculty(Name,Age,Salary,Contact)values('jawad',28,300000,0301)
insert into faculty(Name,Age,Salary,Contact)values('fawad',28,300000,0301)
insert into faculty(Name,Age,Salary,Contact)values('jawed',28,300000,0301)
insert into faculty(Name,Age,Salary,Contact)values('fateh',28,300000,0301)
insert into faculty(Name,Age,Salary,Contact)values('osama',28,10000,0301)
insert into faculty(Name,Age,Salary,Contact)values('Fatimah',28,10000,0301)



truncate table student2
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

insert into faculty1(Id,Name,Age,Salary,Contact)values(15,'Fatimah',28,10000,0301)






insert into student2 select * from faculty1

insert into student(Name,Age,Salary) select Name,Age,Salary from faculty

insert into student(Name) select Name from faculty where ID=1


-- *******************17Cardinality in database*******************

create database relationship
use relationship

-- 1 to 1 relationship
CREATE TABLE STUDENT(
"Student ID" INT IDENTITY(1000,1) PRIMARY KEY NOT NULL,
"Students Name" nvarchar(50) 
);
INSERT INTO STUDENT VALUES('Misbah');
INSERT INTO STUDENT VALUES('Maham');
INSERT INTO STUDENT VALUES('Maryam');
INSERT INTO STUDENT VALUES('Umaima');
INSERT INTO STUDENT VALUES('Fatima');
INSERT INTO STUDENT VALUES('Zainab');
INSERT INTO STUDENT VALUES('Affan');
INSERT INTO STUDENT VALUES('Osman');
INSERT INTO STUDENT VALUES('Hassan');
INSERT INTO STUDENT VALUES('Hamza');
INSERT INTO STUDENT VALUES('Zubair');
INSERT INTO STUDENT VALUES('Abubakar');
INSERT INTO STUDENT VALUES('Umer');



Create table MARKS
(
"Roll Number" INT IDENTITY(311000,1) PRIMARY KEY NOT NULL,
StudentID int foreign key references STUDENT("Student ID"),
Pasingyear VARCHAR(10), 
Examination nvarchar(50),
ObtainedMarks int,
Result varchar(10)
);

INSERT INTO MARKS VALUES(1000,2020,'Annual',540,'Pass');
INSERT INTO MARKS VALUES(1002,2010,'Annual',640,'Pass');
INSERT INTO MARKS VALUES(1003,2017,'Annual',840,'Pass');
INSERT INTO MARKS VALUES(1004,2016,'Supply',240,'Fail');
INSERT INTO MARKS VALUES(1005,2018,'Annual',570,'Pass');
INSERT INTO MARKS VALUES(1006,2019,'Annual',556,'Pass');
INSERT INTO MARKS VALUES(1007,2015,'Supply',345,'Fail');
INSERT INTO MARKS VALUES(1008,2014,'Annual',567,'Pass');
INSERT INTO MARKS VALUES(1009,2016,'Annual',456,'Pass');
INSERT INTO MARKS VALUES(1010,2013,'Annual',866,'Pass');
INSERT INTO MARKS VALUES(1011,2012,'Annual',567,'Pass');
INSERT INTO MARKS VALUES(1012,2011,'Annual',765,'Pass');
INSERT INTO MARKS VALUES(1001,2011,'Annual',765,'Pass');
select *from STUDENT
select * from MARKS 

-- 1 to many relationship
Create table Department
(
     Id int identity(1,1) primary key not null,
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
Insert into Employee values ( 'Haroon', 'Male', 65000, 1)


SELECT * FROM Department ;
SELECT * FROM Employee;


-- Many to 1 relationship
--inverse to many to 1...

-- Many to Manay relationship

CREATE TABLE Class(
    Id int identity(1,1) primary key not null,
    Title varchar(30),
    Instructor varchar(30),
  
);
insert into Class values('Class 1','Nasir')
insert into Class values('Class 2','Haris')
insert into Class values('Class 3','Rohan')


CREATE TABLE Students(
    Id int identity(1,1) primary key not null,
    Name varchar(35),

); 

insert into Students values('Laiba')
insert into Students values('Misbah')
insert into Students values('Anas')


CREATE TABLE ClassStudentTableRelation(
    Id int identity(1,1) primary key not null,
    StudentAddress varchar(14) NOT NULL,
    ClassID int foreign key references Class(ID),
    StudentID int foreign key references Students(ID)
 
);
insert into ClassStudentTableRelation values('Karachi',1,2)
insert into ClassStudentTableRelation values('Lahore',2,3)
insert into ClassStudentTableRelation values('Multan',1,1)
select*from Class
select*from Students
select*from ClassStudentTableRelation 

-- *******************18Stored Procedure*******************

CREATE DATABASE ABC
USE ABC 
CREATE TABLE ABCTutorial(
Id int identity(1,1) primary key not null,
Name varchar(20)
)
--Describe the table
sp_help 'dbo.ABCTutorial'




CREATE PROCEDURE select_all_data
AS
SELECT * FROM ABCTutorial
GO;

EXEC select_all_data

CREATE PROCEDURE inserted
@Name varchar(30)
AS
INSERT INTO ABCTutorial VALUES( @Name)
GO

EXEC inserted @Name = 'Misbah'
EXEC inserted @Name = 'Laiba'
EXEC inserted @Name = 'Harryson'
EXEC inserted @Name = 'Anas'

