-- 3. Identify the highest-priced pizza.

SELECT 
    pt.name, p.price
FROM
    pizza_types pt
        JOIN
    pizzas p ON p.pizza_type_id = pt.pizza_type_id
WHERE
    p.price IN (SELECT 
            MAX(price)
        FROM
            pizzas);
            
            