# SQL Queries Quiz

This is the Northwinds version of this exercise, since we already have a rails-style version of Northwinds.  There is also a Chinook version that we use for the .Net course that is in an even-more .Net style: https://coursewareofthefuture.herokuapp.com/courses/7/quizzes/9

## Write a query to display all records in the orders table

> SELECT * FROM orders

## SELECT * FROM orders

> SELECT * FROM employees WHERE first_name LIKE 'A%'

## Show me the employees whose first name starts with A or last name ends with N.

> SELECT * FROM employees WHERE first_name LIKE 'A%'  OR last_name LIKE '%N'

## Show only the order id for every order detail in the order details table

> SELECT order_id FROM order_details

## Use an inner join to combine the order_details and products tables

> SELECT * FROM order_details JOIN products ON order_details.product_id = products.id

## Show only the order id, the product name, and the product's category id for every order detail in the order details table

> SELECT * FROM products INNER JOIN categories ON products.category_id = categories.id

## Show only the order id, the product name, and the product's category name for every order detail in the order details table

> SELECT order_id, product_name, categories.category_name FROM order_details JOIN products ON order_details.product_id = products.id JOIN categories ON products.category_id = categories.id

## I want to see a list of all employee's with their boss's name.  It is Ok, if you exclude the employee that has no boss.

> select employee.first_name AS employee_first_name, employee.last_name AS employee_last_name, boss.first_name AS boss_first_name, boss.last_name AS boss_last_name FROM employees employee, employees boss WHERE employee.reports_to_id = boss.id

## What if I want to see that but in reverse alphabetical order of boss's last name?

> select employee.first_name AS employee_first_name, employee.last_name AS employee_last_name, boss.first_name AS boss_first_name, boss.last_name AS boss_last_name FROM employees employee, employees boss WHERE employee.reports_to_id = boss.id ORDER BY boss.last_name DESC

## List all the orders taken by the sales representative Anne Dodsworth from the companies based in London along with the unit price and quantity of each order.
