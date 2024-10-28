create database pizza;
select * from pizza_sales;

select sum(total_price) as Total_Revenue from pizza_sales;

select sum(total_price) / count(distinct order_id) as Avg_order_value from pizza_sales;

select sum(quantity) as total_pizzas_sold from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select cast(sum(quantity) / count(distinct order_id) as decimal (10,2)) as Avg_pizzas_per_order from pizza_sales;

SELECT 
    DAYNAME(order_date) AS order_day, 
	COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales 
GROUP BY DAYNAME(order_date);

SELECT 
    MONTHNAME(order_date) AS Monthly_orders, 
	COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales 
GROUP BY MONTHNAME(order_date)
ORDER BY TOTAL_ORDERS ASC;

select pizza_category,sum(total_price) as total_sales,sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as PCT 
from pizza_sales
group by pizza_category;


select pizza_size,sum(total_price) as total_sales,sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as PCT 
from pizza_sales
group by pizza_size;

select  pizza_name,sum(total_price) as total_revenue from pizza_sales
group by pizza_name 
order by total_revenue desc limit 5;

select  pizza_name,sum(total_price) as total_revenue from pizza_sales
group by pizza_name 
order by total_revenue asc limit 5;

SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC limit 5;

SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC LIMIT 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC LIMIT 5;

SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC LIMIT 5;