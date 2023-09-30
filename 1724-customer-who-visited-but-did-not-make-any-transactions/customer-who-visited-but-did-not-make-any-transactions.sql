# Write your MySQL query statement below

select customer_id ,count(customer_id) as count_no_trans
from visits
where visit_id  NOT IN(select v.visit_id
from Transactions as t
JOIN Visits as v on t.visit_id= v.visit_id)
group by customer_id
order by count_no_trans DESC






