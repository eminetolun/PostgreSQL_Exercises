 -- country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananların sıralanması
 
 SELECT country FROM country
 WHERE country ~~ 'A%a'; 
 
-- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananların sıralanması

SELECT country FROM country
WHERE country ~~ '______n%' ;

-- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerinin sıralanması

SELECT title FROM film
WHERE title ~~* '%T%T%T%T%';


-- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verilerin sıralanması

SELECT * FROM film
WHERE (title ~~ 'C%') AND (length > 90) AND (rental_rate = 2.99);


