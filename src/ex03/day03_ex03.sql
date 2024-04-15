WITH female_table AS  
(SELECT pizzeria.name,
	COUNT(pizzeria.name) AS count_female
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_visits.person_id
WHERE gender = 'female'
GROUP BY pizzeria.name),

male_table AS
(SELECT pizzeria.name,
	COUNT(pizzeria.name) AS count_male
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_visits.person_id
WHERE gender = 'male'
GROUP BY pizzeria.name)

SELECT female_table.name AS pizzeria_name
FROM female_table
JOIN male_table ON male_table.name = female_table.name
WHERE male_table.count_male != female_table.count_female
ORDER BY 1;