-- SQL-команды для создания таблиц
CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date varchar(10) NOT NULL,
	notes text
)

CREATE TABLE customers
(
	customer_id int PRIMARY KEY,
	company_name varchar(200) NOT NULL,
	contact_name text
)

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id int UNIQUE REFERENCES customers(customer_id),
	employee_id int UNIQUE REFERENCES employees(employee_id),
	order_date varchar(10) NOT NULL,
	ship_city varchar(100) NOT NULL
)
