-- SubQuery

select Salary from info  --outer query
where Salary >=  (select max(salary) from info) --inner query

select max(salary) from info
where Salary < (select max(salary) from info)