with visit_andrey as
  (select pizzeria.name
  from pizzeria
  join person_visits on pizzeria.id = person_visits.pizzeria_id
  join person on person.id = person_visits.person_id
  where person.name = 'Andrey'),
order_andrey as
  (select pizzeria.name
  from pizzeria
  join menu on menu.pizzeria_id = pizzeria.id
  join person_order on menu.id = person_order.menu_id
  join person on person.id = person_order.person_id
  where person.name = 'Andrey')

select visit_andrey.name as pizzeria_name
from visit_andrey
left join order_andrey on visit_andrey.name = order_andrey.name
where order_andrey.name is null;
