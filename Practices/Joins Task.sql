create database  joins
use joins
create table faculty
(
ID INT IDENTITY(1,1)primary key NOT NULL,
Name nvarchar(50),
Email nvarchar(50),
Salary int
);

INSERT INTO faculty VALUES('Ali','a@gmail.com',50000);
INSERT INTO faculty VALUES('Hassan','b@gmail.com',50000);
INSERT INTO faculty VALUES('Husain','c@gmail.com',50000);
INSERT INTO faculty VALUES('Arsalan','d@gmail.com',50000);
INSERT INTO faculty VALUES('Humaid','e@gmail.com',50000);

SELECT * FROM faculty;


create table student
(
ID INT IDENTITY(1,1)primary key NOT NULL,
Name nvarchar(50),
Course nvarchar(50),
Faculty int FOREIGN KEY REFERENCES faculty(ID)

);

INSERT INTO Student VALUES('Laiba','OFFICE',1);
INSERT INTO Student VALUES('Misbah','CPISM',2);
INSERT INTO Student VALUES('Ayesha','SQL',3);
INSERT INTO Student VALUES('Zimal','APP DEVELOPMENT',5);
INSERT INTO Student VALUES('Irha','MACHINE LANGUAGE',5);
INSERT INTO Student VALUES('Umaima','DATA SCIENCR',5);
INSERT INTO Student VALUES('Maryam','PHP',2);
INSERT INTO Student VALUES('Sobia','PYTHON',3);
INSERT INTO Student VALUES('Aqsa','ARTIFICIAL INTELLIGENCE',1);
INSERT INTO Student VALUES('Humaid','eETHICAL HACKING',null);
select * from Student
select * from faculty
SELECT Course,faculty.Name as 'Faculty Name' ,student.Name as 'Student Name'
FROM faculty
INNER JOIN Student
ON Student.Faculty = faculty.Id

SELECT Course,faculty.Name as 'Faculty Name' ,student.Name as 'Student Name'
FROM faculty
left JOIN Student
ON Student.Faculty = faculty.Id

SELECT Course,faculty.Name as 'Faculty Name' ,student.Name as 'Student Name'
FROM faculty
right JOIN Student
ON Student.Faculty = faculty.Id

SELECT Course,faculty.Name as 'Faculty Name' ,student.Name as 'Student Name'
FROM faculty
full JOIN Student
ON Student.Faculty = faculty.Id
