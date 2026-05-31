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

## Store Performance
- Store 20 recorded the highest total sales (~301M)
- Store 33 recorded the lowest total sales (~37M)
## Time Trends
- Sales peaked in 2011 and declined in 2012
- July shows highest monthly sales, while January is lowest
- Strong seasonal variation observed in demand
## Temperature Impact
- Sales are highest in cool conditions (<80°F)
- Moderate in 80–100°F range
- Lowest in extreme heat (>100°F)
## Holiday Impact
- Non-holiday weeks generate higher average sales than holiday weeks
- Suggests steady weekly demand is stronger than seasonal spikes
## Fuel Price Impact
- Only slight variation in sales across fuel price ranges
- Weak relationship between fuel price and sales observed
## CPI (Inflation) Impact
- Higher CPI levels slightly correspond with lower sales
- Relationship is weak and not strongly linear
## Unemployment Impact
- Lower unemployment (<5%) corresponds to highest sales
- Higher unemployment shows reduced sales activity

#### Key Business Insights
- Store performance is the strongest driver of revenue differences
- Seasonal factors (month/weather) significantly impact sales
- Economic indicators (CPI, fuel price, unemployment) show weak to moderate influence
- External economic conditions alone do not strongly predict sales behavior

#### SQL Skills Demonstrated
- Aggregations (SUM, AVG)
- Conditional grouping (CASE WHEN)
- Time-based analysis (YEAR, MONTH)
- Sorting and ranking (ORDER BY, LIMIT)
- Data cleaning techniques
- Staging table workflow

#### Conclusion
	This project demonstrates how SQL can be used to transform raw retail data into actionable business insights. The analysis shows that store performance and seasonality have a stronger influence on sales than macroeconomic factors.
