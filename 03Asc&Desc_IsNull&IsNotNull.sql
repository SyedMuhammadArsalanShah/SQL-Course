-- asc/desc order

select * from info order by Name Asc
select * from info order by Name desc


--is not null / is null (select * from table name where column name IS NULL  )
--is null 
select * from info where Contact is  null
-- is not null
select * from info where Contact is not null
