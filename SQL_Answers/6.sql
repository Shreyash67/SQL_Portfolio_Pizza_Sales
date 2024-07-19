-- 6. Join the necessary tables to find the total quantity of each pizza 
-- category ordered.

SELECT 
    SUM(order_details.quantity) AS quantity,
    pizza_types.category
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category
ORDER BY quantity DESC;

