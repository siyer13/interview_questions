/**

Give the below table 

create table orders (
order_id int,
customer_id int,
order_date date,
cost float
);


Write a query to get the 

    first purchase amount, 
    last purchase amount & 
    total purchase amount 
    
for each customer along with all the existing columns


*/


-- Query

select *, 
first_value(cost) over (partition by customer_id order by order_date asc) first_purchase_amount,
first_value(cost) over (partition by customer_id order by order_date desc) last_purchase_amount,
sum(cost)  over (partition by customer_id)  total_purchase_amount
from public.orders o