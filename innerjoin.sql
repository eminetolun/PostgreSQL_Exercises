
-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city.city, country.country 
FROM  city 
INNER JOIN country 
ON city.country_id = country.country_id;

-- customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
select * from customer;
select * from payment;

SELECT p.payment_id , c.first_name , c.last_name 
FROM customer c
INNER JOIN payment p
ON c.customer_id = p.customer_id ;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT r.rental_id , c.first_name , c.last_name 
FROM customer c
INNER JOIN rental r
ON c.customer_id = r.customer_id;
