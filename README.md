# Walmart-Sales-Analysis-Using-SQL
SQL project analyzing Walmart sales data to identify store performance, sales trends, and the impact of economic factors such as CPI, fuel price, temperature, and unemployment.

#### Project Overview
	This project analyzes Walmart retail sales data to identify key business insights such as store performance, seasonal trends, and the impact of external economic factors (CPI, fuel price, unemployment, temperature).
The goal is to demonstrate SQL skills in data cleaning, exploratory data analysis (EDA), and business insight generation.

#### Objectives
- Identify top and bottom performing stores
- Analyze sales trends over time (year/month)
- Understand seasonal and environmental impact on sales
- Evaluate influence of economic factors (CPI, fuel price, unemployment)
- Practice SQL for real-world business analysis

#### Dataset Description
  The dataset contains the following columns.
| Column | Description |
|----------|------------|
| Store | Store identifier |
| Date | Weekly sales date |
| Weekly_Sales | Weekly sales amount |
| Holiday_Flag | Holiday week indicator (1 = Holiday, 0 = Non-Holiday) |
| Temperature | Average temperature (°F) |
| Fuel_Price | Fuel price |
| CPI | Consumer Price Index |
| Unemployment | Unemployment rate |

#### Data Cleaning Process
  In data cleaning, I mainly did four stages: remove duplicates, standardizing data, handling null values and blank values and remove unnecessary columns.
- Created a staging table for data cleaning
- Checked for duplicate records using ROW_NUMBER()
- No duplicate records were found
- Converted Date column into SQL DATE format
- Verified Holiday_Flag values (0 and 1)
- Checked numerical columns for consistency
- Checked for null and missing values
- No unnecessary columns were identified

#### Exploratory Data Analysis (Key Insights)
- Store performance varies significantly across the dataset, with Store 20 achieving the highest total sales and Store 33 recording the lowest total sales.
- Sales peaked in 2011 and declined in 2012, indicating a downward trend after the peak year.
- January 2011 recorded the lowest monthly sales, while December 2010 recorded the highest monthly sales.
- Seasonal patterns are observed, with certain months consistently showing stronger performance across years.
- Non-holiday weeks generate higher average sales compared to holiday weeks, although top-performing stores remain consistent across both categories.
- Temperature shows a moderate relationship with sales, where cooler conditions are associated with higher sales and extremely high temperatures correspond to lower sales.
- Fuel price shows a weak relationship with weekly sales, indicating minimal impact on demand.
- CPI (inflation) has a moderate effect on sales, where lower CPI values are generally associated with higher sales.
- Unemployment rate shows a noticeable relationship with sales, where lower unemployment corresponds to higher consumer spending.
- No missing or null values were found in the dataset, ensuring data quality and reliability for analysis.

#### Key Business Insights
- Store-level differences are a major driver of overall sales variation.
- Time-based factors, especially year and month, significantly influence sales performance.
- Sales peaked in 2011, suggesting a strong performance period followed by a decline in 2012.
- Seasonal trends are evident across all years, indicating consistent consumer behavior patterns.
- Economic factors such as CPI and unemployment have a moderate impact on sales, while fuel price shows minimal influence.
- Holiday periods do not necessarily lead to higher overall sales compared to regular weeks.

#### SQL Skills Demonstrated
- Data aggregation using SUM and AVG functions
- Use of CASE WHEN for categorical analysis
- Date manipulation using YEAR, MONTH, and DATE_FORMAT
- Time-series analysis across multiple dimensions
- Year-over-year and seasonal comparison techniques
- Grouping and filtering data using GROUP BY and WHERE clauses
- Identification and validation of data quality (null and missing value checks)

# Conclusion
This project analyzed Walmart sales data using SQL to understand store performance, time-based trends, and the impact of external economic and environmental factors. The analysis revealed significant differences in performance across stores, with Store 20 achieving the highest total sales and Store 33 recording the lowest.
Time-series analysis showed that sales peaked in 2011 and declined in 2012, indicating a downward trend after the peak year. Seasonal patterns were also observed, with certain months consistently performing better across all years.
The analysis of external factors showed that temperature, CPI, and unemployment rate have a moderate influence on weekly sales, while fuel price shows a weak relationship with sales performance. Additionally, holiday weeks did not consistently outperform non-holiday weeks in terms of average sales.
Overall, the findings highlight that store-level differences and time-based trends are the strongest drivers of sales variation, while economic factors play a secondary role in influencing consumer demand.
