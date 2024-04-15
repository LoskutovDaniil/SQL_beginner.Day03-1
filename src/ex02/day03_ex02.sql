SELECT DISTINCT menu.pizza_name,
	menu.price,
	pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu ON menu.pizzeria_id  = pizzeria.id
LEFT JOIN person_order ON person_order.menu_id = menu.id
WHERE person_order.menu_id IS NULL
ORDER BY 1, 2;