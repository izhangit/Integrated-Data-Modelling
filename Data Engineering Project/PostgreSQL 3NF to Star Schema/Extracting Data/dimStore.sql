INSERT INTO dimstore
(store_key,store_id,address,address2,district,
 city,country,postal_code,manager_first_name,
 manager_last_name,start_date,end_date)
 SELECT s.store_id as store_key,
 		s.store_id,
		a.address,
		a.address2,
		a.district,
		c.city,
		co.country,
		postal_code,
		st.first_name as manager_first_name,
		st.last_name as manager_last_name,
		now() as start_date,
		now() as end_date
FROM store as s
	JOIN staff as st
	ON (s.manager_staff_id = st.staff_id)
	JOIN address as a
	ON (s.address_id = a.address_id)
	JOIN city as c
	ON (a.city_id = c.city_id)
	JOIN country as co
	ON (c.country_id = co.country_id);
	

	
	



		
		