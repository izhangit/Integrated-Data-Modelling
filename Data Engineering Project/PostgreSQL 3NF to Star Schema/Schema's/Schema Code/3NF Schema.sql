-- 3NF Schema
SELECT f.title,
	   EXTRACT(month FROM p.payment_date) as month,
	   ci.city,
	   sum(p.amount) as revenue
FROM payment as p
	   JOIN rental as r  	ON (p.rental_id = r.rental_id)
	   JOIN inventory as i  ON (r.inventory_id = i.inventory_id)
	   JOIN film as f 		ON (i.film_id = f.film_id)
	   JOIN customer as c   ON (p.customer_id = c.customer_id)
	   JOIN address as a    ON (c.address_id = a.address_id)
	   JOIN city as ci      ON (a.city_id = ci.city_id)
GROUP BY (f.title, month, ci.city)
ORDER BY f.title, month, ci.city, revenue DESC;






