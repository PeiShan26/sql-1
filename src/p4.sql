UPDATE inventories SET price = '300.00' WHERE product_id = '2';
SELECT * FROM inventories;

UPDATE inventories SET price = price * 1.10;
SELECT * FROM inventories;