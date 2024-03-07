/* Write your T-SQL query statement below */
select customer_id
from customer
group by customer_id
having count(distinct product_key) = (select count(product_key) from product)
order by customer_id asc