create database Casemark
create table marksheet
(
Rollnumber int identity(311000,1) not null,
Studentname nvarchar(50),
Passingyear varchar(20),
Examination varchar(20),
Percentage int
);

Insert into marksheet values('Laiba','2020','Annual',81); 
Insert into marksheet values('Misbah','2021','Annual',84); 
Insert into marksheet values('Irha','2019','Annual',85); 
Insert into marksheet values('Ayesha','2018','Annual',86); 
Insert into marksheet values('Fatima','2020','Annual',77); 
Insert into marksheet values('Sawda','2020','Annual',79); 
Insert into marksheet values('Yusra','2019','Annual',39); 
Insert into marksheet values('Shibra','2021','Annual',49); 

select * from marksheet;


select Studentname,Percentage,
case
when Percentage <= 100 and Percentage >=80  then 'A+'
WHEN Percentage <=79 and Percentage >=70 then'A'
WHEN Percentage <=69 and Percentage >=60 then'B'
WHEN Percentage <=59 and Percentage >=50 then'C'
WHEN Percentage <=49 and Percentage >=40 then'D'
Else 'Fail'
end as grade into matric_result_ from marksheet;

 select * from matric_result_




create table INTERMEDIATE_MARKSHEET
(
Roll_number int identity(311000,1) not null,
Student_name nvarchar(50),
Passing_year varchar(20),
Examination varchar(20),
Percentage int
);
insert into INTERMEDIATE_MARKSHEET select Studentname,Passingyear,Examination,Percentage from marksheet;
select * from INTERMEDIATE_MARKSHEET

select Student_name,Percentage,

case
when Percentage <= 100 and Percentage >=80  then 'A+'
WHEN Percentage <=79 and Percentage >=70 then'A'
WHEN Percentage <=69 and Percentage >=60 then'B'
WHEN Percentage <=59 and Percentage >=50 then'C'
WHEN Percentage <=49 and Percentage >=40 then'D'
Else 'Fail'
end as grade into INTERMEDIATE_RESULT  from INTERMEDIATE_MARKSHEET  

 select * from INTERMEDIATE_RESULT
