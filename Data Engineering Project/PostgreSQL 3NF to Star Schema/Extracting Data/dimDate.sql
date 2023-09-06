INSERT INTO dimDate
(date_key, date, year, quarter, month, day, week, is_weekend)
SELECT
    DISTINCT TO_CHAR(payment_date :: DATE, 'yyyyMMdd')::integer as date_key,
    date(payment_date) as date,
    EXTRACT(year FROM payment_date) as year,
    EXTRACT(quarter FROM payment_date) as quarter,
    EXTRACT(month FROM payment_date) as month,
    EXTRACT(day FROM payment_date) as day,
    EXTRACT(week FROM payment_date) as week,
    CASE WHEN EXTRACT(ISODOW FROM payment_date) IN (6,7) THEN true ELSE false END AS is_weekend
FROM payment;