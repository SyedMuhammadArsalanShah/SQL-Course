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

