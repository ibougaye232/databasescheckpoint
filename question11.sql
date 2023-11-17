select customer_name, count(*) as numer_of_orders, count(order_date)
from customer2
join orders2 on customer2.customer_id=orders2.customer_id
group by customer_name
having count(order_date)>7