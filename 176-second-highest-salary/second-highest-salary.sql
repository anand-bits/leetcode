# Write your MySQL query statement below

select max(salary) as SecondHighestSalary
from employee as e

where e.salary<(select max(salary)
from employee

)
