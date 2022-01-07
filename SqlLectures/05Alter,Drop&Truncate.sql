
-- *******************Alter QUERY*******************
--Alter(Add) 
--ALTER TABLE table_name ADD column_name datatype
alter table info
add Address varchar(50)

alter table info
add Address varchar(50), Location nvarchar(50)
--Alter (drop) 
--ALTER TABLE table_name DROP COLUMN column_name
alter table info drop column Address
alter table info drop column Address ,Location

-- Alter(modify)
--ALTER TABLE table_name ALTER COLUMN column_name datatype
alter table info
alter column Address int

-- *******************Drop QUERY*******************
--DROP TABLE table_name;
Drop table info
---- *******************Truncate QUERY*******************
--TRUNCATE TABLE table_name;
truncate table info


--note You can do multiple ADD or multiple DROP COLUMN, but just one ALTER COLUMN.