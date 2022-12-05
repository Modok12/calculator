CREATE TABLE item(item_id VARCHAR(20) PRIMARY KEY,
	item_name VARCHAR(20) NOT NULL,
	PRICE BIGINT);
	
CREATE TABLE client(client_id VARCHAR(20) PRIMARY KEY,
	client_name VARCHAR(20) NOT NULL,
	client_tel BIGINT);
	
CREATE TABLE basket(client_id VARCHAR(20),
 item_id VARCHAR(20) PRIMARY KEY,
	quantity INT,total_amount INT,
 CONSTRAINT FK_5 FOREIGN KEY (client_id)
 REFERENCES client(client_id),
 CONSTRAINT Fk_2 FOREIGN KEY (item_id)
 REFERENCES item (item_id));
 
 SELECT * FROM basket;
 
 ALTER TABLE item ADD category VARCHAR(20);
 
 SELECT * FROM item;
 
 ALTER TABLE basket ADD orderdate DATE;
 
 SELECT * FROM basket;