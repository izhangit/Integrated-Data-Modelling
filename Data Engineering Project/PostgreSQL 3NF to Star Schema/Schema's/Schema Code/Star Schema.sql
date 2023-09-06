-- Star Schema

SELECT dimMovie.title,
	   dimDate.month,
	   dimCustomer.city,
	   sum(sales_amount) as revenue
FROM factsales
	   JOIN dimMovie	ON (dimMovie.movie_key = factsales.movie_key)
	   JOIN dimDate		ON (dimDate.date_key = factsales.date_key)
	   JOIN dimCustomer	ON (dimCustomer.customer_key = factsales.customer_key)
GROUP BY (dimMovie.title, dimDate.month, dimCustomer.city)
ORDER BY dimMovie.title, dimDate.month, dimCustomer.city, revenue DESC;
	   