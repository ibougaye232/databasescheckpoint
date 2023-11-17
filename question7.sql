select customer_name,
sum(CASE WHEN product2.category='widget' then 1 else 0 end) as number_of_widgets,
sum(case when product2.category='gadget' then 1 else 0 end) as number_of_gadgets,
sum(total_amount) as total_client_amount
from customer2
join orders2 on orders2.customer_id=customer2.customer_id
join product2 on orders2.product_id=product2.product_id

group by customer_name