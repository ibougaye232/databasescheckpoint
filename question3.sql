SELECT 
    customer_name,
    SUM(CASE WHEN p.category = 'widget' THEN o.total_amount ELSE 0 END) AS total_widget_amount,
    SUM(CASE WHEN p.category = 'gadget' THEN o.total_amount ELSE 0 END) AS total_gadget_amount
FROM 
    customer2 c
JOIN 
    orders2 o ON c.customer_id = o.customer_id
JOIN 
    product2 p ON o.product_id = p.product_id
GROUP BY 
    customer_name
HAVING 
    SUM(CASE WHEN p.category = 'widget' THEN o.total_amount ELSE 0 END) > 0
    AND SUM(CASE WHEN p.category = 'gadget' THEN o.total_amount ELSE 0 END) > 0;



