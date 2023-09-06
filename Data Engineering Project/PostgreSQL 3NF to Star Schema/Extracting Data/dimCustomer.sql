-- Populate dimCustomer
INSERT INTO dimCustomer
(
    customer_key,
    customer_id,
    first_name,
    last_name,
    email,
    address,
    address2,
    district,
    city,
    country,
    postal_code,
    phone,
    active,
    create_date,
    start_date,
    end_date
)
SELECT
    c.customer_id as customer_key,
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    a.address,
    a.address2,
    a.district,
    ci.city,
    co.country,
    a.postal_code,
    a.phone,
    c.active,
    c.create_date,
    now() as start_date,
    now() as end_date
FROM customer as c
JOIN address as a
    ON (c.address_id = a.address_id)
JOIN city as ci
    ON (a.city_id = ci.city_id)
JOIN country as co
    ON (ci.country_id = co.country_id);
