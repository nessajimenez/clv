USE retail;

-- here's a table where i did some calculations that will help us model for clv
DROP TABLE IF EXISTS lifetime_value;
CREATE TEMPORARY TABLE lifetime_value
With cust_sales AS(
					SELECT cust_id, 
					ROUND(SUM(total_price)) as total_revenue,
					MIN(date) as first_purchase,
					MAX(date) as last_purchase,
					DATEDIFF('2011-01-01 09:26:00', MIN(date)) AS lifetime,
					COUNT(DISTINCT(date)) as frequency
					FROM sales
					GROUP BY cust_id
                    )
SELECT cust_id, 
		total_revenue,
		first_purchase,
		last_purchase,
		lifetime,
		frequency,
		ROUND((total_revenue/frequency)*4.4458) as CV,
		ROUND(((total_revenue/frequency)*4.4458)*134.2622) as CLV
FROM cust_sales;


-- now i put the new table together with sales
SELECT sales.*,
		total_revenue,
		first_purchase,
		last_purchase,
		lifetime,
		frequency, 
		lifetime_value.CV,
        lifetime_value.CLV
FROM sales
JOIN lifetime_value
ON lifetime_value.cust_id = sales.cust_id;


-- calculating average number of transactions
WITH cust_sales AS(
					SELECT cust_id, 
					ROUND(SUM(total_price)) as total_purchase_amount,
					MIN(date) as first_purchase,
					MAX(date) as last_purchase,
					DATEDIFF(MAX(date),MIN(date)) as lifetime_in_days,
					COUNT(DISTINCT(date)) as purchases
					FROM sales
					GROUP BY cust_id
                    )
SELECT AVG(purchases)
FROM cust_sales;

-- finding average customer lifetime
With cust_sales AS(
					SELECT cust_id, 
					ROUND(SUM(total_price)) as total_purchase_amount,
					MIN(date) as first_purchase,
					MAX(date) as last_purchase,
					DATEDIFF(MAX(date),MIN(date)) as lifetime_in_days,
					COUNT(DISTINCT(date)) as purchases
					FROM sales
					GROUP BY cust_id
                    )
SELECT AVG(lifetime_in_days)
FROM cust_sales;


-- change a table column name to not be same as keyword in sql
ALTER TABLE sales
CHANGE COLUMN `desc` `product` VARCHAR(150);

-- wanting to see the entire amount spent by customer per invoice
SELECT  cust_id,
		invoice,
        date,
        SUM(quantity) total_units,
		SUM(total_price)
FROM sales
GROUP BY cust_id,
		date,
		invoice;
        
WITH all_invoices AS (SELECT  cust_id,
								invoice,
								date,
								SUM(quantity) total_units,
								SUM(total_price) as invoice_total
						FROM sales
						GROUP BY cust_id,
								date,
								invoice
						)
SELECT AVG(invoice_total)
FROM all_invoices;        
        

-- returns
SELECT cust_id,
invoice, 
date, 
SUM(total_price) as total_return
FROM returns
GROUP BY cust_id, invoice, date;


WITH revenue as (SELECT cust_id,
					invoice, 
                    year,
                    month,
					SUM(total_price) as total_sale
					FROM sales
					GROUP BY cust_id, invoice, year,
                    month)
SELECT SUM(total_sale)
FROM revenue
GROUP BY month;