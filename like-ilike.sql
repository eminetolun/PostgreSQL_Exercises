 -- country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananların sıralanması
 
 select country from country
 where country ~~ 'A%a'; 
 
-- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananların sıralanması

select country from country
where country ~~ '______n%' ;

-- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerinin sıralanması

select title from film
where title ~~* '%T%T%T%T%';


-- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verilerin sıralanması

select * from film
where (title ~~ 'C%') and (length > 90) and (rental_rate = 2.99);


