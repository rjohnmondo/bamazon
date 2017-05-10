CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT(11) auto_increment NOT NULL, ,
	product_name VARCHAR(100) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	price INT NOT NULL,
	quantity INT NOT NULL,
	PRIMARY KEY(item_id)


)

-- INITIAL SEEDIG OF THE PRODUCTS TABLE 

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("BAT","BASEBALL",175.00,9);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("CATCHERS MASK","BASEBALL",98.00,6);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("OUTFIELDERS GLOVE","BASEBALL",68.24,4);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("FACEMASK","FOOTBALL",47.00,3);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("SHOULDER PADS","FOOTBALL",126.00,5);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("HELMET","FOOTBALL",235.00,5);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("HOCKEY STICK","HOCKEY",100.00,4);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("PUCK","HOCKEY",3.00,5);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("HORSE","HORSE RACING",4788.00,2);

INSERT INTO products (product_name,dept_name,price,quantity)
VALUES ("OLYMPIC SWIMMING FACILITY","SWIMMING",4789000.00,2);

