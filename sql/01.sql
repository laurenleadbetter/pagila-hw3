/*
 * Compute the number of customers who live outside of the US.
 */


SELECT count(customer.customer_id)
FROM customer
JOIN address using (address_id)
JOIN city using (city_id)
JOIN country using (country_id)
WHERE country.country_id != 103;
