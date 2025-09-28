-- 4.1 Ranking: Top 5 products per region and quarter
SELECT region, quarter, product_name, total_sales, sales_rank
FROM (
  SELECT c.region,
         CONCAT('Q', QUARTER(t.sale_date), '-', YEAR(t.sale_date)) AS quarter,
         p.name AS product_name,
         SUM(t.amount) AS total_sales,
         RANK() OVER (PARTITION BY c.region, QUARTER(t.sale_date)
                      ORDER BY SUM(t.amount) DESC) AS sales_rank
  FROM transactions t
  JOIN customers c ON t.customer_id = c.customer_id
  JOIN products p ON t.product_id = p.product_id
  GROUP BY c.region, QUARTER(t.sale_date), YEAR(t.sale_date), p.name, t.sale_date
) ranked
WHERE sales_rank <= 5
ORDER BY region, quarter, sales_rank;


-- 4.2 Running monthly sales totals
WITH monthly_sales AS (
  SELECT DATE_FORMAT(sale_date, '%Y-%m-01') AS month_start, SUM(amount) AS monthly_sales
  FROM transactions
  GROUP BY DATE_FORMAT(sale_date, '%Y-%m-01')
)
SELECT month_start,
       monthly_sales,
       SUM(monthly_sales) OVER (ORDER BY month_start) AS running_total
FROM monthly_sales
ORDER BY month_start;

-- 4.3 Month-over-month growth
WITH monthly_sales AS (
  SELECT DATE_FORMAT(sale_date, '%Y-%m-01') AS month_start, SUM(amount) AS monthly_sales
  FROM transactions
  GROUP BY DATE_FORMAT(sale_date, '%Y-%m-01')
)
SELECT month_start,
       monthly_sales,
       LAG(monthly_sales) OVER (ORDER BY month_start) AS prev_month,
       ROUND(((monthly_sales - LAG(monthly_sales) OVER (ORDER BY month_start)) 
              / LAG(monthly_sales) OVER (ORDER BY month_start)) * 100, 2) AS growth_percent
FROM monthly_sales
ORDER BY month_start;

-- 4.4 Customer quartiles
SELECT customer_id,
       SUM(amount) AS total_spent,
       NTILE(4) OVER (ORDER BY SUM(amount) DESC) AS spend_quartile
FROM transactions
GROUP BY customer_id
ORDER BY spend_quartile, total_spent DESC;

-- 4.5 3-month moving average
WITH monthly_sales AS (
  SELECT DATE_FORMAT(sale_date, '%Y-%m-01') AS month_start, SUM(amount) AS monthly_sales
  FROM transactions
  GROUP BY DATE_FORMAT(sale_date, '%Y-%m-01')
)
SELECT month_start,
       monthly_sales,
       ROUND(AVG(monthly_sales) OVER (ORDER BY month_start ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS moving_avg_3m
FROM monthly_sales
ORDER BY month_start;
