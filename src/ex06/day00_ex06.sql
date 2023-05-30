SELECT (SELECT name
        FROM person
        WHERE person.id = person_order.person_id) AS NAME,
		CASE (SELECT name 
			  FROM person
			  WHERE person.id=person_order.person_id)
			WHEN 'Denis' THEN 'true'
			ELSE 'false'
		END AS check_name
FROM person_order
WHERE (menu_id=13 OR menu_id=14 OR menu_id=18) AND order_date='2022-01-07';