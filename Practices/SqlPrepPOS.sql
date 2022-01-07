Create Database SCHOOLMANGEMENTSYSTEM
USE SCHOOLMANGEMENTSYSTEM
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
select *from STUDENT


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
select * from MARKS 
create table Details
(
Id int identity(1,1) primary key not null,
Address varchar(50),
Email varchar(50),
Date_of_birth Date,
Roll_Number int foreign key references MARKS("Roll Number"),
);

insert into Details values('North','a@gmail.com','10-19-2001',311000)
insert into Details values('Nazimabad','b@gmail.com','10-19-2001',311001);
insert into Details values('Gulshan','c@gmail.com','10-19-2001',311002);
insert into Details values('FBArea','d@gmail.com','10-19-2001',311003);
insert into Details values('Saddar','e@gmail.com','10-19-2001',311004);
insert into Details values('Malir','f@gmail.com','10-19-2001',311005);
insert into Details values('Gulistan-e-Johar','g@gmail.com','10-19-2001',311006);
insert into Details values('Jamshad-town','h@gmail.com','10-19-2001',311007);
insert into Details values('Layari','i@gmail.com','10-19-2001',311008);
insert into Details values('Orangi-town','j@gmail.com','10-19-2001',311009);
insert into Details values('New-karachi','k@gmail.com','10-19-2001',311010);
insert into Details values('Shah-faisal_town','l@gmail.com','10-19-2001',311011);
insert into Details values('Liaqatabad','m@gmail.com','10-19-2001',311012);


select * from Details


select "Students Name" ,ObtainedMarks,Result,Address,Email,Date_of_birth
From STUDENT
inner join MARKS
on STUDENT."Student ID"=MARKS.StudentID

inner join details
on marks."Roll Number" = details.Roll_Number;

CREATE DATABASE POS
use POS

create table Category
(
CategoryID int identity(1,1) primary key not null,
CategoryName nvarchar(50)
);

insert into Category values('Laptop');
insert into Category values('Mobile');
insert into Category values('Mobile Accessories');

select * from category;

create table Products
(
Product_Id int identity(1,1)primary key not null,
Product_Name nvarchar(50),
Price int,
ProductQuantity int,
Status varchar(20),
CategoryID INT FOREIGN KEY REFERENCES category(categoryid)

);

INSERT INTO Products VALUES('Nokia3310',5000,10,'active',2);
INSERT INTO Products VALUES('IPhone',200000,50,'active',2);
INSERT INTO Products VALUES('Hand-free',3000,110,'active',3);
INSERT INTO Products VALUES('Notepad',60000,30,'active',1);
INSERT INTO Products VALUES('Samsung',70000,40,'active',1);
INSERT INTO Products VALUES('USB',1000,10,'inactive',3);

select *from Products


create table customer_name
(
customer_id int identity(1,1) primary key not null,
Name nvarchar(50),
Email nvarchar(50),
password nvarchar(50),
gender varchar(10)
);

insert into customer_name values('Maham','a@gmail.com','login123','Female');
insert into customer_name values('Maryam','b@gmail.com','login123','Female');
insert into customer_name values('Maha','c@gmail.com','login123','Female');
insert into customer_name values('Minal','d@gmail.com','login123','Female');
insert into customer_name values('Mirha','e@gmail.com','login123','Female');
select * from customer_name
create table Order_customer
(
ID int identity(1,1) primary key not null,
Order_Name varchar(50),
Customer_ID int foreign key references customer_name(customer_id)
);


insert into Order_customer values('#abc1123',1);
insert into Order_customer values('#def1123',1);

insert into Order_customer values('#ghi1123',2);
insert into Order_customer values('#jkl1123',3);
select * from Order_customer;



create table Bill
(
ID int identity(1,1) primary key not null,
Product_ID INT FOREIGN KEY REFERENCES Products(Product_Id),
QUANTITY int,
Order_id INT FOREIGN KEY REFERENCES Order_customer(id),
Dated date,
Customer_ID INT FOREIGN KEY REFERENCES customer_name(customer_id)
);
insert into Bill values(1,1,1,'2021-02-12',1);
insert into Bill values(2,1,1,'2021-10-31',1);
insert into Bill values(1,2,2,'2021-02-24',1);
insert into Bill values(1,2,3,'2021-02-24',2);
insert into Bill values(1,2,4,'2021-02-24',3);

select*from Bill


select Bill.ID ,CategoryName,Product_Name,Price,ProductQuantity,Status,Name,
Email,password,gender,Order_Name,QUANTITY,Dated

From category
inner join Products
on category.categoryid=Products.CategoryID

inner join Order_customer


inner join customer_name
on customer_name.customer_id = Order_customer.Customer_ID

inner join Bill
on Order_customer.ID = Bill.Order_id  on Bill.Product_ID = Products.Product_Id