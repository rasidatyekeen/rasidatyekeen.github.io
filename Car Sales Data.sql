CREATE DATABASE CAR_DATA

SELECT *
FROM [dbo].[Sheet1$]


--Retrieve the names and selling price of all cars in descending order of selling prices.
SELECT Name 
		,selling_price
FROM [dbo].[Sheet1$]
ORDER BY selling_price DESC

--Retrieve the second maximum selling price of the cars
SELECT MAX(Selling_price)
FROM [dbo].[Sheet1$]
WHERE selling_price<(SELECT MAX(selling_price) 
						FROM [dbo].[Sheet1$])


--How many petrol cars will there be in 2020?
SELECT COUNT(Name)
FROM [dbo].[Sheet1$]
WHERE Fuel = 'Petrol' AND year = '2020'

--Give a print of all the fuel cars come by all year
SELECT COUNT(Name)	
		,fuel
		,year
FROM [dbo].[Sheet1$]
GROUP BY year, fuel
order by year DESC

--Which year has more than 100 cars?
SELECT COUNT(Name)
		,year
FROM [dbo].[Sheet1$]
GROUP BY year
HAVING COUNT(Name)>100

--Give a complete list of all cars count details between 2015 and 2023.
SELECT COUNT(Name)
FROM [dbo].[Sheet1$]
WHERE year BETWEEN 2015 AND 2023

--Give a complete list of all car details between 2015 and 2023
SELECT *
FROM [dbo].[Sheet1$]
WHERE year BETWEEN 2015 AND 2023

