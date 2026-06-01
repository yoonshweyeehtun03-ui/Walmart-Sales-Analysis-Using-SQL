-- Store performance

select store, round (sum(Weekly_Sales),0) as sales_total
from sales_staging
group by store
order by sales_total desc
limit 1;

select store, round (sum(Weekly_Sales),0) as sales_total
from sales_staging
group by store
order by sales_total asc
limit 1;

-- Time trend

with highest_sales as
	(select 
	year (`date`) as year,
	month (`date`) as month,
	round (sum(weekly_sales),0) as total_sales
	from sales_staging
	group by year (`date`), month (`date`)
	order by year, month)
select 
	concat(year,'-',lpad(month,2,0)) as month_year, total_sales
from highest_sales
order by total_sales desc;

select 
year (`date`) as Year,
round (sum(weekly_sales),0) as Sales_Total
from sales_staging
group by Year
order by Sales_Total desc;

select month(`date`) as Month,
	round(sum(case when year(`date`) = 2010 then weekly_sales else 0 end),0) as 2010_sales,
	round(sum(case when year(`date`) = 2011 then weekly_sales else 0 end),0) as 2011_sales,
	round(sum(case when year(`date`) = 2012 then weekly_sales else 0 end),0) as 2012_sales
from sales_staging
group by month(`date`) 
order by Month;

-- Temperature Impact

select 
case 
	when temperature < 80 then 'Cool(<80)'
	when temperature between 80 and 100 then 'Hot (80-100)'
	else  'Super_Hot (>100)'
end as Temp_Range,
round (avg(weekly_sales),0) as sales_average
from sales_staging
group by Temp_Range
order by sales_average desc;

-- Holiday Impact

select Holiday_Flag, round(avg(Weekly_Sales),0)
from sales_staging
group by Holiday_Flag
order by 2 asc;

select store, Holiday_Flag,
round(sum(weekly_sales),0) as Sales_Total
from sales_staging
where Holiday_Flag = 1
group by store
order by Sales_Total asc;

-- Fuel price Impact

select
case 
	when fuel_price <3 then 'low(<3)'
    when fuel_price between 3 and 3.5 then 'normal(3-3.5)'
    else 'high(>3.5)'
end as fuel_range,
round (avg(weekly_sales),0) as sales_average
from sales_staging
group by fuel_range
order by 2 asc;

-- CPI Impact

select
case 
	when cpi <150 then 'low(<150)'
    when cpi between 150 and 200 then 'normal(150-200)'
    else 'high(>200)'
end as cpi_range,
round (avg(weekly_sales),0) as sales_average
from sales_staging
group by cpi_range
order by 2 desc;

-- Unemployment rate Impact

select
case 
	when unemployment <5 then 'low(<5)'
    when unemployment between 5 and 10 then 'normal(5-10)'
    else 'high(>10)'
end as unemployment_range,
round (avg(weekly_sales),0) as sales_average
from sales_staging
group by unemployment_range
order by 2 desc;