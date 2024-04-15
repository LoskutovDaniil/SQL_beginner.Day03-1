insert into menu values ((select max(id)+1 from menu),
						 (select pizzeria.id FROM pizzeria
						 where pizzeria.name = 'Dominos'),
						 'sicilian pizza', 900);
						
