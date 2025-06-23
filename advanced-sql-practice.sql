-- task #1 inner join query
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
         INNER JOIN customers ON orders.customer_id = customers.id;

-- task #2 left join qquery
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
         LEFT JOIN customers ON orders.customer_id = customers.id;

-- task #3 group by w\ sim
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- task #4 group by with sum & having
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 200;

-- task #5 where clause before group by
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount > 200
GROUP BY customer_id;

-- task #6 scalar subquery
SELECT id, order_date, total_amount
FROM orders
WHERE total_amount >= (SELECT AVG(total_amount) FROM orders);

-- task #7 column subquery
SELECT id, order_date, total_amount, customer_id
FROM orders
WHERE customer_id IN (SELECT id FROM customers WHERE last_name = 'Smith');

-- task #8 table subquery
SELECT order_date
FROM (SELECT id, order_date, total_amount FROM orders) AS order_summary;



