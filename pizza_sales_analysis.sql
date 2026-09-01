USE pizzahut;


-- 1. Calculate the total number of orders placed

SELECT
    COUNT(order_id) AS total_orders
FROM pizzahut.orders;


-- 2. List the top 5 most ordered pizza types along with their quantities

SELECT
    pizza_types.name,
    SUM(order_details.quantity) AS Quantity
FROM pizzahut.pizza_types
JOIN pizzahut.pizzas
    ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN pizzahut.order_details
    ON order_details.pizza_id = pizzas.pizza_id
GROUP BY name
ORDER BY quantity DESC
LIMIT 5;


-- 3. Calculate the total revenue generated from pizza sales

SELECT
    ROUND(SUM(order_details.quantity * pizzas.price), 2) AS Total_sales
FROM order_details
JOIN pizzas
    ON order_details.pizza_id = pizzas.pizza_id;


-- 4. Join relevant tables to find the category-wise distribution of pizzas

SELECT
    category,
    COUNT(name)
FROM pizza_types
GROUP BY category;


-- 5. Identify the most common pizza size ordered

SELECT
    pizzas.size,
    COUNT(order_details.order_details_id) AS Frequency
FROM pizzahut.pizzas
JOIN pizzahut.order_details
    ON pizzas.pizza_id = order_details.pizza_id
GROUP BY size
ORDER BY Frequency DESC
LIMIT 1;


-- 6. Determine the top 3 most ordered pizza types based on revenue for each pizza category

SELECT
    name,
    category,
    revenue
FROM
(
    SELECT
        category,
        name,
        revenue,
        RANK() OVER (
            PARTITION BY category
            ORDER BY revenue DESC
        ) AS r
    FROM
    (
        SELECT
            pizza_types.name,
            pizza_types.category,
            SUM(pizzas.price * order_details.quantity) AS revenue
        FROM pizzas
        JOIN order_details
            ON pizzas.pizza_id = order_details.pizza_id
        JOIN pizza_types
            ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        GROUP BY pizza_types.category, pizza_types.name
    ) AS a
) AS b
WHERE r < 4;


-- 7. Determine the top 3 most ordered pizza types based on revenue

SELECT
    pizza_types.name AS name,
    SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details
JOIN pizzas
    ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY name
ORDER BY revenue DESC
LIMIT 3;


-- 8. Group the orders by date and calculate the average number of pizzas ordered per day

SELECT
    AVG(total) AS daily_average
FROM
(
    SELECT
        orders.order_date AS date,
        SUM(order_details.quantity) AS total
    FROM orders
    JOIN order_details
        ON orders.order_id = order_details.order_id
    GROUP BY date
) AS total_daily_quantity;


-- 9. Calculate the percentage contribution of each category towards the total revenue

SELECT
    pizza_types.category AS category,
    ROUND(
        SUM(order_details.quantity * pizzas.price) * 100 /
        (
            SELECT
                SUM(order_details.quantity * pizzas.price)
            FROM order_details
            JOIN pizzas
                ON order_details.pizza_id = pizzas.pizza_id
        ),
        2
    ) AS percentage_revenue
FROM order_details
JOIN pizzas
    ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY category;


-- 10. Join the necessary tables to find the total quantity of each pizza category ordered

SELECT
    pizza_types.category,
    SUM(order_details.quantity) AS Quantity
FROM pizzahut.pizza_types
JOIN pizzahut.pizzas
    ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN pizzahut.order_details
    ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category
ORDER BY quantity DESC;


-- 11. Determine the distribution of orders by hour of the day

SELECT
    HOUR(order_time) AS hour,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY hour
ORDER BY hour;


-- 12. Identify the highest priced pizza

SELECT
    pizza_types.name,
    pizzas.price
FROM pizzahut.pizzas
JOIN pizzahut.pizza_types
    ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- 13. Calculate the cumulative revenue over time

SELECT
    order_date,
    SUM(revenue) OVER (
        ORDER BY order_date
    ) AS cum_revenue
FROM
(
    SELECT
        orders.order_date,
        SUM(order_details.quantity * pizzas.price) AS revenue
    FROM order_details
    JOIN pizzas
        ON pizzas.pizza_id = order_details.pizza_id
    JOIN orders
        ON orders.order_id = order_details.order_id
    GROUP BY order_date
) AS sales;