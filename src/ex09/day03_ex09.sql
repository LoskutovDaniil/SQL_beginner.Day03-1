insert into person_visits values ((select max(id)+1 FROM person_visits),
								  (select id FROM person 
								  WHERE name = 'Denis'),
								  (select id FROM pizzeria
								  WHERE name = 'Dominos'),
								  '2022-02-24');
								  
insert into person_visits values ((select max(id)+1 FROM person_visits),
								  (select id FROM person 
								  WHERE name = 'Irina'),
								  (select id FROM pizzeria
								  WHERE name = 'Dominos'),
								  '2022-02-24');

								  
						
