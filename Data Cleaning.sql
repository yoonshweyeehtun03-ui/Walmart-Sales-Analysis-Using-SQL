create table sales_staging
like walmart_sales;

insert into sales_staging
select *
from walmart_sales;

select *
from sales_staging;

select *,
row_number () over (
partition by store, `date`) as row_num
from sales_staging
order by date asc;
;

select *
from sales_staging;

select distinct (`date`)
from sales_staging;

update sales_staging
set `date` = str_to_date(`date`, '%d-%m-%Y');

alter table sales_staging
modify column `date` date; 

select *
from sales_staging
where weekly_sales <=0
;

select distinct (`weekly_sales`)
from sales_staging;

select *
from sales_staging;

select min(Unemployment), max(Unemployment)
from sales_staging
;

select round(Weekly_Sales,0)
from sales_staging;









