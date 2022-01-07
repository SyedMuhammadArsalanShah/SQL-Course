
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