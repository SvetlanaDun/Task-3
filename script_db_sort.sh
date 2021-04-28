"#!/bin/bash

SELECT * FROM products  
         WHERE id_product IN ('7');

SELECT ( SELECT avg(price_in_ruble) FROM products), id_product, brand, category, item, notes_about_product, price_in_ruble, rating_product
    FROM products
    WHERE brand = 'Honor' 
    GROUP BY id_product, brand, category, item, notes_about_product, price_in_ruble, rating_product 
    HAVING price_in_ruble < ( select avg(price_in_ruble) from products);

SELECT ( SELECT avg(price_in_ruble) FROM products ) AS avg_price,
       ( SELECT avg(rating_product) FROM products ) AS avg_rating,
       ( SELECT min(price_in_ruble) FROM products ) AS min_price,
       ( SELECT max(rating_product) from products ) AS max_rating, id_product, brand, category, item, notes_about_product, price_in_ruble, rating_product
    FROM products
    WHERE price_in_ruble < ( SELECT (avg(price_in_ruble) / 2) FROM products ) and rating_product > ( SELECT avg(rating_product) FROM products )
    GROUP BY id_product, brand, category, item, notes_about_product, price_in_ruble, rating_product;
