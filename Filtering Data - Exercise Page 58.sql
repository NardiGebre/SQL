-- Filtering Data - Exercise Page 58 & Page 60
-- Exercise 1: Consider a database schema with the following tables:
-- 1. employees Table: employee_id (Primary Key)
-- -- first_name, last_name, department_id, salary, hire_date
-- 2. departments Table: department_id (Primary Key), department_name


ALTER TABLE employees
ADD COLUMN hire_date date;
UPDATE employees
SET hire_date = '2022-08-11'
WHERE employee_id = 5;

UPDATE employees
SET hire_date = '2021-02-09'
WHERE employee_id = 11;

-- Write an SQL query to retrieve all employees who belong to the "Sales" department.

SELECT * FROM employees
INNER JOIN departements ON employees.department_id = departements.department_id
WHERE departements.departemnt_name = 'Sales';

-- Write an SQL query to retrieve employees who were hired in the year 2022.

SELECT * FROM employees WHERE extract(YEAR FROM (hire_date)) = 2022;

-- Write an SQL query to retrieve employees whose salary is greater than $50,000.

SELECT * FROM employees WHERE salary > 50000;

-- Write an SQL query to retrieve employees whose last name starts with the letter 'S'.

SELECT * FROM employees WHERE first_name LIKE 'S%';

-- Write an SQL query to retrieve employees who belong to the "Sales" department 
-- and were hired in the year 2022.

SELECT * FROM employees 
INNER JOIN departements ON employees.department_id =departements.department_id
WHERE departements.departemnt_name = 'Sales' AND extract (YEAR FROM (hire_date))= 2022;

-- Exercise 2: Consider a database schema with the following table:
-- orders Table:
-- order_id (Primary Key)
-- customer_id
-- order_date (Date)
-- total_amount

Create table orders(
order_id int Primary Key,
customer_id int,
order_date Date, 
total_amount decimal
);

INSERT INTO orders(
order_id, customer_id, order_date, total_amount)
Values  (23, 101, '2021-06-09', 88000),
		(27, 102, '2020-03-08', 17000),
		(37, 103, '2022-01-04', 22000),
		(46, 104, '2023-02-10', 35000),
		(56, 105, '2021-07-09', 80000), 
		(77, 106, '2020-03-08', 17000),
		(87, 107, '2022-01-09', 260000), 
		(96, 108, '2023-02-10', 35000), 
		(62, 109, '2021-07-09', 88000), 
		(72, 110, '2020-03-08', 17000), 
		(73, 111, '2022-01-04', 22000), 
		(64, 112, '2023-02-10', 35000), 
		(67, 113, '2021-07-09', 88000), 
		(97, 114, '2020-03-08', 17000);	


-- Write an SQL query to retrieve orders placed by customers with customer_id 101, 102, and 103.

SELECT * FROM orders
WHERE customer_id IN (101, 102,103);

-- Write an SQL query to retrieve orders placed on or after January 1, 2022, and on or before
December 31, 2022.

SELECT * FROM orders
WHERE order_date BETWEEN '2022-01-01' AND '2000-12-31';

-- Write an SQL query to retrieve orders with a total_amount between $500 and $1,000

SELECT * FROM orders
WHERE total_amount BETWEEN 500 AND 1000;

-- Write an SQL query to retrieve orders placed by customers with customer_id 104, 105,
and 106, and with a total_amount greater than $1,500.

SELECT * FROM orders
WHERE customer_id IN (104, 105, 106) AND total_amount > 1500;

-- Write an SQL query to retrieve orders placed on or after January 1, 2023, by customers
with customer_id 107 or 108.

SELECT * FROM orders
WHERE order_date >= '2023-01-01' AND customer_id IN (107, 108);








