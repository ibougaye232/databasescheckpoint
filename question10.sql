select product_name, count(customer_id) as orders_number, sum(quantity) total_quantity
from product2
join orders2 on product2.product_id=orders2.product_id
group by product_name
order by count(customer_id) desc

