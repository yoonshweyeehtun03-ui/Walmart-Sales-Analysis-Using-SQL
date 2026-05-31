select count(*)
from sales_staging;

-- 1 Which store has the highest and lowest total weekly sales? (store performance)

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

-- 2 How do weekly sales change over time (by date/month/year) (time trend)

select 
year (`date`) as year,
month (`date`) as month,
sum(weekly_sales) as total_sales
from sales_staging
group by year (`date`), month (`date`)
order by year, month;

-- 3 Is there any relationship between temperature and weekly sales? (temperature impact)

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

-- 4 Do holiday weeks have higher average sales than non-holiday weeks? (holiday impact)

select Holiday_Flag, round(avg(Weekly_Sales),0)
from sales_staging
group by Holiday_Flag
order by 2 asc;

-- 5 Does fuel price have any correlation with weekly sales? (fuel impact)

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

-- 6 How does CPI (inflation) affect weekly sales? (inflation impact)

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

-- 7 How does unemployment rate affect weekly sales? (unemployment impact)

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