CREATE TABLE employees(
id integer NOT NULL,
name nvarchar(50),
position nvarchar(50),
department nvarchar(50),
salary decimal(10, 2),
PRIMARY KEY(id));

INSERT INTO employees(id, name, position, department, salary)
VALUES
('1', 'Nikki Ferrierio', 'Staff', 'Sales', '30000.00'),
('2', 'Wye Frostdick', 'Manager', 'Engineering', '80000.00'),
('3', 'Ezekiel Esland', 'Staff', 'Legal', '50000.00'),
('4', 'Moise Rosengart', 'Staff', 'R&D', '65000.00'),
('5', 'Berta McNalley', 'Staff', 'Engineering', '65000.00'),
('6', 'Biddy Matuszkiewicz', 'Intern', 'Sales', '10000.00'),
('7', 'Aubrey Natwick', 'Manager', 'Legal', '70000.00'),
('8', 'Saundra Boulsher', 'Staff', 'Engineering', '65000.00'),
('9', 'Jillana Duchateau', 'Manager', 'Human Resources', '45000.00'),
('10', 'Gregory Ascrofte', 'Manager', 'R&D', '80000.00');


CREATE TABLE customers(
customer_id integer NOT NULL,
customer_name nvarchar(50),
city nvarchar(50)
PRIMARY KEY(customer_id));


INSERT INTO customers(customer_id, customer_name, city)
VALUES
('1', 'Corry Wyard', 'New York'),
('2', 'Allen Chong', 'Beijing'),
('3', 'Pavla Eburne', 'Tokyo'),
('4', 'Hubey Jauncey', 'New York'),
('5', 'Forest Risbrough', 'London'),
('6', 'Biddy Kernott', 'Moscow'),
('7', 'Cindy Cheah', 'Beijing'),
('8', 'Binnie Bowfin', 'Paris'),
('9', 'Rockwell Scorton', 'Bangkok'),
('10', 'Gregory Shoesmith', 'London');


CREATE TABLE orders(
order_id integer NOT NULL,
order_date date,
customer_id integer,
total_amount decimal(10, 2),
PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id));

INSERT INTO orders(order_id, order_date, customer_id, total_amount)
VALUES
('1', '20 January 2023', '7', '2700.00'),
('2', '5 April 2023', '6', '20000.00'),
('3', '27 April 2023', '4', '4500.00'),
('4', '3 May 2023', '1', '2500.00'),
('5', '7 June 2023', '5', '3000.00'),
('6', '30 August 2023', '7', '2000.00'),
('7', '21 September 2023', '3', '3000.00'),
('8', '10 December 2023', '9', '900.00'),
('9', '7 January 2024', '8', '30000.00'),
('10', '16 March 2024', '2', '6000.00');


CREATE TABLE inventories(
product_id integer NOT NULL,
product_name nvarchar(50),
quantity integer,
price decimal(10, 2),
PRIMARY KEY(product_id));

INSERT INTO inventories(product_id, product_name, quantity, price)
VALUES
('1', 'Keyboard', '100', '450.00'),
('2', 'Mouse', '900', '200.00'),
('3', 'Speaker', '870', '500.00'),
('4', 'Tablet', '50', '10000.00'),
('5', 'Adapter', '300', '250.00');


CREATE TABLE sales(
sales_id integer NOT NULL,
order_id integer,
customer_id integer,
product_id integer,
quantity integer,
sales_date date,
PRIMARY KEY(sales_id),
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(product_id) REFERENCES inventories(product_id));

INSERT INTO sales(sales_id, order_id, customer_id, product_id, quantity, sales_date)
VALUES
('1', '1', '7', '2', '3', '20 January 2023'),
('2', '2', '6', '4', '2', '5 April 2023'),
('3', '3', '4', '1', '10', '27 April 2023'),
('4', '4', '1', '3', '5', '3 May 2023'),
('5', '5', '5', '2', '15', '7 June 2023'),
('6', '6', '7', '5', '8', '30 August 2023'),
('7', '7', '3', '3', '6', '21 September 2023'),
('8', '8', '9', '1', '2', '10 December 2023'),
('9', '9', '8', '4', '3', '7 January 2024'),
('10', '10', '2', '3', '12', '16 March 2024');