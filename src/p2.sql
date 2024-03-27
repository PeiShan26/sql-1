SELECT customers.customer_name, orders.order_date, orders.total_amount FROM orders
INNER JOIN customers ON customers.customer_id = orders.customer_id
WHERE customers.city = 'New York'