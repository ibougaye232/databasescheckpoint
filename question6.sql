SELECT customer_name,
    SUM(CASE WHEN product2.category = 'doohickey' THEN orders2.total_amount ELSE 0 END) AS total_doohickey_amount
FROM customer2
JOIN orders2 ON customer2.customer_id = orders2.customer_id
JOIN product2 ON orders2.product_id = product2.product_id
GROUP BY customer_name
HAVING SUM(CASE WHEN product2.category = 'doohickey' THEN orders2.total_amount ELSE 0 END) > 0;