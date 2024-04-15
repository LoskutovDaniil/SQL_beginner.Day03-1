insert into person_order values ((select max(id)+1 FROM person_order),
								 (select id FROM person
								 WHERE name = 'Denis'),
								 20,
								 '2022-02-24');
								 
insert into person_order values ((select max(id)+1 FROM person_order),
								 (select id FROM person
								 WHERE name = 'Irina'),
								 20,
								 '2022-02-24');
								  
						
