select customer_name, count(product_id) as orders_number
from customer2
join orders2 on customer2.customer_id=orders2.customer_id
group by customer_name 
order by orders_number desc