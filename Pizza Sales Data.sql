CREATE DATABASE [Pizza Sales]
SELECT *
FROM [dbo].[pizza_sales$]

--/Total Revenue
SELECT SUM(total_price)
FROM [dbo].[pizza_sales$]

--Total Pizzas Sold/--
SELECT SUM(quantity)
FROM [dbo].[pizza_sales$]

--Total number of Orders
SELECT COUNT(order_id)
FROM [dbo].[pizza_sales$]


--How many order Veggie pizza category was sold
SELECT SUM(quantity)
FROM [dbo].[pizza_sales$]
WHERE pizza_category = 'Veggie'

--How many  The Hawaiian Pizza and  The Greek Pizza  was sold
SELECT SUM(quantity)
FROM [dbo].[pizza_sales$]
WHERE pizza_name IN('The Hawaiian Pizza','The Greek Pizza')

--List of pizza ordered in January 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE order_date BETWEEN '2015-01-01' AND '2015-01-31'

--List of pizza ordered between 1st of November till 31st December 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE order_date BETWEEN '2015-11-01' AND '2015-12-31'

--What is the quantity of The Spinach Supreme Pizza sold in March 2015
SELECT SUM(quantity)
FROM [dbo].[pizza_sales$]
WHERE pizza_name = 'The Spinach Supreme Pizza' 
AND order_date BETWEEN '2015-03-01' AND '2015-03-31'

--List of Medium pizza sold
SELECT *
FROM [dbo].[pizza_sales$]
WHERE pizza_size = 'M'
--List of pizza that sold for more than 12.5
SELECT *
FROM [dbo].[pizza_sales$]
WHERE unit_price > 12.5