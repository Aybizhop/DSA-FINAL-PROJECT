create Database Kultra_mega
select * from [KMS Sql Case Study]

-----1. Product category with the highest sales 
Select 
Sum(sales) 'total_sales',
Product_category from [KMS Sql Case Study]
group by product_category
order by sum(sales) desc

----2. Top 3 and Bottom 3 region in terms of sales
---Top 3
Select Top 3 region,
Sum(sales) As Total_sales,
 Region From [KMS Sql Case Study]
Group by region 
Order by total_sales DESC

-----Bottom 3
Select top 3 region,
Sum(sales) As Total_sales,
 Region From [KMS Sql Case Study]
Group by region 
Order by total_sales ASC

----3. total sales of applinces in Ontario----
Select region, Sum(Sales) As Total_Sales
from [KMS Sql Case Study]
where region ='Ontario'
Group by region

----4. My Advice is to increase revenue from the bottom 10

-----5. KMS incurred the most shipping cost using which shipping method----

select ship_mode,
Sum(shipping_cost) As Total_shipping_cost
from [KMS Sql Case Study]
group by ship_Mode
Order By total_Shipping_cost DESC

-----6. the most valuable customers and the products or services theyb typically purchase ----
Select 
customer_name, Product_name,
count (order_Id) as Purchase_Count,
Sum(Sales) As total_spent
from [KMS Sql Case Study]
Group by customer_name, product_name
order by Total_spent desc

----7. Which small business customer has the highest sales ----
Select Customer_name, 
Sum(sales) As total_sales
from [KMS Sql Case Study]
where Customer_segment ='small business'
Group by Customer_name
order by Total_sales DESC

----8. Which corporate customer placed the most number of orders in 2009-2012---
Select Customer_name, Count(Distinct order_id) As total_orders
From [KMS Sql Case Study]
where Customer_segment = 'corporate'
and order_date between '2009-01-01'
And '2012-12-31'
Group by Customer_name
Order by Total_orders DESC

----9. Which consumer customer was the most profitable one-----
Select Customer_name, Sum(profit) As Total_profit
from [KMS Sql Case Study]
where Customer_segment = 'Consumer'
Group by Customer_name
order by Total_profit DESc

----10. Which customer returned items and what segment do they belong

Select Customer_name, customer_segment
from [KMS Sql Case Study]
where Profit <0

----11. 
select order_priority, ship_mode,
count (order_id) As order_count,
Round(sum(profit), 2) As Estimatedshippingcost,
Avg(Datediff(day, order_date,ship_date)) As avgshipdays
from [KMS Sql Case Study]
group by order_priority, ship_mode
Order by order_priority, ship_mode desc

--- the company mase cost conscious but moderately appropriate choice by using 
regular air for most high priority orders , its not the fastest method but it shows
a rerasonable balance netween the urgency and cost 




