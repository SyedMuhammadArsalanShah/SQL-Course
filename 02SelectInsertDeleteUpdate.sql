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
