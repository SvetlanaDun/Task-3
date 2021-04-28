"#! /bin/bash

CREATE ROLE "svetlana_klopot" SUPERUSER CREATEDB INHERIT LOGIN;
createdb test_db
psql -U svetlana_klopot -d test_db
CREATE TABLE products (
    id_product              serial  primary key,
    brand           		text,
    category 	    		text,
    item      	    		text,
    notes_about_product     text,
    price_in_ruble	        numeric (12, 2),
    rating_product         	numeric (4, 2)
); 
INSERT INTO products (brand, category, item, notes_about_product, price_in_ruble, rating_product)
        VALUES ('Samsung',  'electronics',  	  'mobile phone',  'Galaxy A51', 	  14999.99, 7.8),
	       ('LG',       'electronics',  	  'display',       'U7651FE',    	  25000.00, 8.1),
	       ('Honor',    'electronics',  	  'smart watch',   'ST2110KA',   	  31800.00, 8.0),
	       ('Honor',    'electronics',  	  'mobile phone',  'H4355UY',    	  12999.99, 5.8),
	       ('Tefal'	    'kitchenware', 	      'frying pan',    'Ingenio Black 24 cm', 2880.00,  9.8),
	       ('Canon',    'electronics',        'printer',       'i-SENSYS LBP6030B',   18690.00, 6.3),
           ('Philips',  'home appliances',    'iron',          'GC4905/40',           6668.90,  9.5),
           ('Bosch',    'kitchen appliances', 'gas hob',       'PB06C5B90',           35990.00, 8.55),
	       ('ASUS',     'electronics',        'Wi-Fi router',  'RT-AX58U',            9739.00,  10.00),
           ('Bosch',    'furniture',	      'computer chair','black/red color',     16300.00, 4.05)
;

