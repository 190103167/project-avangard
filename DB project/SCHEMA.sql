CREATE TABLE products ( 
	product_id int NOT NULL,
	product_name varchar(50) NOT NULL,
	price int NOT NULL
)
;
CREATE TABLE product_category ( 
	product_id int NOT NULL,
	category_id int not null,
)
;
CREATE TABLE product_description ( 
	product_id int NOT NULL,
	description varchar(100) NOT NULL
)
;

Create table Customer (
	customer_id int not null,
	store_id int not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null,
	telephone int not null			
);

create table store (
store_id int not null,
store_name varchar(50) not null,
rating int not null
);
create table category (
category_id int not null,
category_name varchar(50) not null
);

create table product_store (
product_id int not null,
store_id int not null);

create table cart(
cart_id number not null,
product_id number not null,
customer_id number not null
);

create table address (
address_id int not null,
customer_id int not null,
address varchar(50) not null
);

ALTER TABLE products ADD CONSTRAINT HR_products
	PRIMARY KEY (product_id)
;
ALTER TABLE cart ADD CONSTRAINT HR_cart
	PRIMARY KEY (cart_id)
;
ALTER TABLE customer ADD CONSTRAINT HR_customer
	PRIMARY KEY (customer_id)
;
ALTER TABLE address ADD CONSTRAINT HR_address
	PRIMARY KEY (address_id)
;
ALTER TABLE store ADD CONSTRAINT HR_store
	PRIMARY KEY (store_id)
;
ALTER TABLE category ADD CONSTRAINT HR_category
	PRIMARY KEY (category_id)
;


ALTER TABLE product_description ADD CONSTRAINT HR_product_description_prod
	FOREIGN KEY (product_id) REFERENCES products (product_id)
;
ALTER TABLE product_category ADD CONSTRAINT HR_product_category_products
	FOREIGN KEY (product_id) REFERENCES products (product_id)
;
ALTER TABLE product_store ADD CONSTRAINT HR_product_store_products
	FOREIGN KEY (product_id) REFERENCES products(product_id)
;
ALTER TABLE product_store ADD CONSTRAINT HR_product_store_store
	FOREIGN KEY (store_id) REFERENCES store (store_id)
;
ALTER TABLE customer ADD CONSTRAINT HR_customer_store
	FOREIGN KEY (store_id) REFERENCES store (store_id)
;
ALTER TABLE address ADD CONSTRAINT HR_address_customer
	FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
;
ALTER TABLE cart ADD CONSTRAINT HR_product_cart
	FOREIGN KEY (product_id) REFERENCES products (product_id)
;
ALTER TABLE cart ADD CONSTRAINT HR_customer_cart
	FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
;
ALTER TABLE product_category ADD CONSTRAINT HR_category_product_category
	FOREIGN KEY (category_id) REFERENCES category (category_id)
;
