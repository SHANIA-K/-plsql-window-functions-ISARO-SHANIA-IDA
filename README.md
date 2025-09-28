# -plsql-window-functions-ISARO-SHANIA-IDA
## Step 1: Problem Definition
Business concept: Aretsil coffee shop operating in Rwanda with multiple branches. The management wants to analyze product performane and customer purchasing trends.

Data Challenges: The company has thousands of sales transactions but struggles to identify top products, track growth overtime, and classify customers into meaningful groups for marketing.

Expected outcome: Identify top selling products by region and quarter, measure month over month sales growth, calcuate running totals, segment customers, and compute moving averages for forecasting.

## Step2: Success criteria
Identify Top5 products per region/quarter: RANK().
Calculate running monthly sales totals: SUM() OVER()
Determine month over month growth: LAG()/LEAD().
Segment customers into quartiles: NTILE(4).
Compute 3 month moving averages: AVG() OVER().

##RESULT ANALYSIS
Best products: Coffee Beans consistently ranked #1 in Kigali and Rubavu, while in Huye and Musanze, Green Tea was superior.
Sales trends: Sales had a consistent upward slope each month from January to March, then dropped slightly in April before soaring in June.
Customer spending: The highest quartile (Q1) customers accounted for more than 60

##References
Mode Analytics. SQL Window Functions Tutorial.
GeeksforGeeks. SQL Window Functions in SQL. 
DataCamp. SQL Window Functions Cheat Sheet. 
SQLite. Window Functions Documentation. 
YouTube video: “Introduction to SQL Window Functions”. 
MySQL 8.0 Reference Manual 
Academic or BI articles for customer segmentation and retail analytics.
Academic Journal of Business Analytics. (2023). Customer Segmentation in Retail.
TechTarget. (2025). Business Intelligence with SQL.
Claude AI. (2025). SQL code generation and query explanations.
