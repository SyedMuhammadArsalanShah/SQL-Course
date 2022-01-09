create database sp
 use sp
 create table student
(
ID INT IDENTITY(1,1)primary key NOT NULL,
Name nvarchar(50),
Course nvarchar(50),


);


--insert
create procedure inserted 
@Name nvarchar(50),
@Course nvarchar(50)
as

 insert into student(name, course )values (@name , @course)

go

EXEC inserted @Name = 'Misbah',@course='DATA SCIENCE'
EXEC inserted @Name = 'Laiba' ,@course='MACHINE LEARNING'
EXEC inserted @Name = 'Harryson',@course='APP DEVELOPMENT'
EXEC inserted @Name = 'Anas',@course='CPISM'
EXEC inserted @Name = 'Affan',@course='MS OFFICE'

--select
create procedure selected 

as

select * from student

go

EXEC selected

--update
create procedure updated
@ID int ,
@Name nvarchar(50),
@Course nvarchar(50)
as
    
update student set Name= @Name,Course =@Course where ID =@ID
go

EXEC updated @Name = 'Hassan',@course='Java', @id=5


--delete

create procedure Deleted
@ID int
as

DELETE FROM student  WHERE  ID = @ID

go

EXEC Deleted @ID =4;
-- Search by name

create procedure Search
@Name nvarchar(50)
as

select * FROM student  WHERE  Name = @Name

go
Exec Search @Name ='Misbah'