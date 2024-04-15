with t1 as (select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name_1, menu.price
from menu
join pizzeria on pizzeria.id = menu.pizzeria_id),
t2 as (select menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name_2, menu.price
from menu
join pizzeria on pizzeria.id = menu.pizzeria_id)

select t1.pizza_name, t1.pizzeria_name_1, t2.pizzeria_name_2, t1.price from t1
cross join t2
where t1.pizza_name = t2.pizza_name and t1.price = t2.price and t1.pizzeria_name_1 < t2.pizzeria_name_2
order by 1  