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
