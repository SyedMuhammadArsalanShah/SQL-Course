
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
