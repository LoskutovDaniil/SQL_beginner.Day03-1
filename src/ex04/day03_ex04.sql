with male_order as
  (select distinct pizzeria.name
  from person_order
  join person on person.id = person_order.person_id
  join menu on person_order.menu_id = menu.id
  join pizzeria on menu.pizzeria_id = pizzeria.id
  where person.gender = 'female'),
female_order as
  (select distinct pizzeria.name
  from person_order
  join person on person.id = person_order.person_id
  join menu on person_order.menu_id = menu.id
  join pizzeria on menu.pizzeria_id = pizzeria.id
  where person.gender = 'male')
  
select * from male_order
except
select * from female_order;