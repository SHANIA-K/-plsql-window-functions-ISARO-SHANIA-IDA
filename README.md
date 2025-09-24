# -plsql-window-functions-ISARO-SHANIA-IDA
## Step 1: Problem Definition
Business concept: Aretsil coffee shop operating in Rwanda with multiple branches. The management wants to analyze product performane and customer purchasing trends.
Data Challenges: The company has thousands of sles transactions but struggles to identify top products, track growth overtime, and classify customers into meaningful groups for marketing.
Expected outcome: Identify top selling products by region and quarter, measure month over month sales growth, calcuate running totals, segment customers, and compute moving averages for forecasting.
## Step2: Success criteria
Identify Top5 products per region/quarter: RANK().
Calculate running monthly sales totals: SUM() OVER()
Determine month over month growth: LAG()/LEAD().
Segment customers into quartiles: NTILE(4).
Compute 3 month moving averages: AVG() OVER().
