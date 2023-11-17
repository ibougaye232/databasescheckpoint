select product_name,sum(quantity) as total_product_quantity
from product2
join orders2 on product2.product_id=orders2.product_id
group by product_name
having sum(quantity)>0