Create database  Family 
use Family

CREATE TABLE FAMILY 
(Id int primary key IDENTITY(1,1) NOT NULL,
Name varchar(20) ,
DateOfBirth  date ,
FatherName int FOREIGN KEY  REFERENCES Family(Id))



insert into FAMILY (Name,DateOfBirth)values('Muhammad','2001-5-11')
insert into FAMILY (Name,DateOfBirth,FatherName)values('Ahmed','2001-5-11',1)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Hamid','2001-5-11',2)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Mahmood','2001-5-11',2)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Ali','2001-5-11',3)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Talha','2001-5-11',4)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Zubair','2001-5-11',5)
insert into FAMILY (Name,DateOfBirth,FatherName)values('Zahid','2001-5-11',5)






select * from family


select a.name as'Name' , b.name as 'Father Name' from 
Family a 
inner join 
Family b 
on a.FatherName=b.Id;

select a.name as'Name' , b.name as 'Father Name' from Family a ,Family b where  a.FatherName=b.Id;