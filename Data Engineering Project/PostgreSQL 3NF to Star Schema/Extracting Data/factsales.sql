-- Populate Factsales
INSERT INTO factSales
(date_key, customer_key, movie_key, store_key, sales_amount)
SELECT
    TO_CHAR(payment_date :: DATE, 'yyyyMMdd')::integer AS date_key,
    p.customer_id as customer_key,
    i.film_id as movie_key,
    i.store_id as store_key,
    p.amount as sales_amount
FROM payment as p
JOIN rental as r
ON (p.rental_id = r.rental_id)
JOIN inventory as i
ON (r.inventory_id = i.inventory_id);