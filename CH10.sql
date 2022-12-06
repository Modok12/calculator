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
					 ('PO1','Samsung Galaxy S20', 3299, 'Smartphone'),
					 ('PO2','ASUS NOTEBOOK', 4599, 'PC');
SELECT * FROM customer;
INSERT INTO customer(customer_id,
					customer_name,
					customer_tel)
					VALUES
					('C01', 'ALI', 71321009),
					('C02', 'ASMA', 77345823);
SELECT * FROM orders;
INSERT INTO orders(customer_id,
				  product_id,
				 order_date,
				   quantity,
				  total_amount)
				  VALUES
				  ('C02', 'P01','2020-05-28', 1,3299);
INSERT INTO orders(customer_id,
				   product_id,
				   quantity,
				   total_amount)
				   VALUES
				   ('C01','P02', 2,9198);

DROP TABLE orders;