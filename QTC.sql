CREATE TABLE product(
	product_id VARCHAR(20) PRIMARY KEY,
	product_name VARCHAR(20) NOT NULL,
	PRICE BIGINT);
	
CREATE TABLE customer(
	customer_id VARCHAR(20) PRIMARY KEY,
	customer_name VARCHAR(20) NOT NULL,
	customer_tel BIGINT);
	
CREATE TABLE orders(
customer_id VARCHAR(20),
 product_id VARCHAR(20),
	order_date DATE default current_date,
	quantity INT,total_amount FLOAT,
 CONSTRAINT FK_5 FOREIGN KEY (customer_id)
 REFERENCES customer(customer_id),
 CONSTRAINT Fk_2 FOREIGN KEY (product_id)
 REFERENCES product (product_id));
 
 SELECT * FROM orders;
 
 ALTER TABLE product ADD category VARCHAR(20);
 
 SELECT * FROM product;
 
 ALTER TABLE orders ADD order_date DATE;
 
 SELECT * FROM orders;
 SELECT * FROM product;
 INSERT INTO product(product_id,
					product_name,
					 price,
					 category)
					 VALUES
-- 					 ('PO1','Samsung Galaxy S20', 3299, 'Smartphone'),
-- 					 ('PO2','ASUS NOTEBOOK', 4599, 'PC'),
					 ('PO3', 'APPLE MACBOOK',8000, 'PC'),
					 ('PO4', 'PS',6000,'GAME');
SELECT * FROM customer;
INSERT INTO customer(customer_id,
					customer_name,
					customer_tel)
					VALUES
					--('C01', 'ALI', 71321009),
					--('C02', 'ASMA', 77345823),
					('C03', 'THOMAS',77856768),
					('C04', 'MARIEE', 72356812);
SELECT * FROM orders;
INSERT INTO orders(customer_id,
				  product_id,
				 order_date,
				   quantity,
				  total_amount)
				  VALUES
				 -- ('C02', 'PO1','2020-05-28', 1,3299),
				  ('C03', 'PO3','2021-01-03', 4, 3200),
				  ('C04','PO4','2022-02-12', 2, 1200);
INSERT INTO orders(customer_id,
				   product_id,
				   order_date,
				   quantity,
				   total_amount)
				   VALUES
				   ('C01','PO2',NULL,2,9198);

--QUERY CHECKPOINT
SELECT * FROM customer;

select * from product
where price between 5000 and 10000;

SELECT * FROM product ORDER by price DESC;

SELECT  SUM(quantity), AVG(total_amount), 
MAX(total_amount),MIN(total_amount) FROM orders;
SELECT product_id, SUM(quantity) FROM orders GROUP BY product_id;
SELECT customer_id FROM orders WHERE quantity > 2;
SELECT EXTRACT(MONTH FROM order_date) AS month, extract(year FROM order_date)
AS year, COUNT(order_id) FROM orders ORDER BY month WHERE year = '2020';
SELECT product_name, customer_name, order_date FROM orders inner JOIN product
ON orders.product_id = product.product_id JOIN customer ON orders.customer_id;
SELECT * FROM orders WHERE order_date . current_date- interval '3 months';
SELECT customer_name FROM customers WHERE customer_id NOT IN ()