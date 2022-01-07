Declare @aa int
set @aa=3
select 
case @aa
when 1 then 'the value is one'
when 2 then 'the value is two'
when 3 then 'the value is three'
else 'invalid'
end


select name, salary,
CASE 
when Salary >=1000 And Salary <=10000 then'new teacher'
when Salary >=100000 And Salary <=200000 then'Senior teacher'
else ' Most Senior teacher'
end as Category from faculty 





