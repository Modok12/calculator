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
 product_id VARCHAR(20) PRIMARY KEY,
	quantity INT,total_amount INT,
 CONSTRAINT FK_5 FOREIGN KEY (customer_id)
 REFERENCES customer(customer_id),
 CONSTRAINT Fk_2 FOREIGN KEY (product_id)
 REFERENCES product (product_id));
 
 SELECT * FROM orders;
 
 ALTER TABLE product ADD category VARCHAR(20);
 
 SELECT * FROM product;
 
 ALTER TABLE orders ADD orderdate DATE;
 
 SELECT * FROM orders;