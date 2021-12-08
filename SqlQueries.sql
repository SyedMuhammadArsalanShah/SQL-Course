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

-- *******************SELECT QUERY*******************
--
-- SELECT * FROM table_name
select * from info

--SELECT column1, column2, ... FROM table_name;
SELECT Name from info



-- *******************INSERT QUERY*******************
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



-- *******************UPDATE QUERY*******************


-- Updated Query  
update info set Name ='Arsalan' ,Age =50 Where Id =8
-- *******************DELETE QUERY*******************
Delete  from info where Id =6


----Operators ( AND, NOT ,OR) WITH WHERE CLAUSE
-- OR
select * from info where (Name='Misbah' Or Age =23)
--And
select *from info where (Name='Misbah' And Age =20 And Id=13)


--Not 
select * from info where Not Name ='Misbah'


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