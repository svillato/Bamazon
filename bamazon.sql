DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;
USE bamazon;
CREATE TABLE products ( 
item_id INTEGER (11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR (100),
department_name VARCHAR (100),
price DECIMAL(13,2), 
stock_quantity INTEGER (11),
PRIMARY KEY (item_id)
 );
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("hydroflask", "home", 40.99, 300);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("JBL wireless headphones", "electronics", 89.99, 57);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("french press", "home", 13.00, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("reusable k cups", "home", 17.99, 26);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("hippo plush doll", "toys", 15.99, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("moleskin notebook", "school", 19.99, 150);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("black gel pen", "school", 1.99, 321);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("jean jacket large", "women clothes", 45.99, 14);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("green jump rope", "toys", 5.00, 43);
INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("girl on the run painting", "home", 500.00, 1);
SELECT * FROM products