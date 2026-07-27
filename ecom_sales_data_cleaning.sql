## 1 Total Revenue
SELECT SUM(`Total Price`) AS total_revenue
FROM sales_data;

## 2 Sales by Category
SELECT Category, SUM(`Total Price`) AS total_revenue
FROM sales_data
GROUP BY Category
ORDER BY total_revenue DESC;

## 3 Sales by Region
SELECT Region, SUM(`Total Price`) AS total_revenue
FROM sales_data
WHERE Region IS NOT NULL
GROUP BY Region
ORDER BY total_revenue DESC;

## 4 Monthly Sales Trend
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS month, SUM(`Total Price`) AS total_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

## 5 Top 5 Customers by Revenue
SELECT `Customer ID`, SUM(`Total Price`) AS total_revenue
FROM sales_data
GROUP BY `Customer ID`
ORDER BY total_revenue DESC
LIMIT 5;

## 6 Product Performance (Volume & Revenue)
SELECT `Product Name`, SUM(`Quantity`) AS total_units_sold, SUM(`Total Price`) AS total_revenue
FROM sales_data
GROUP BY `Product Name`
ORDER BY total_revenue DESC;

## 7 Logistics & Return Rate Analysis
SELECT `Shipping Status`, COUNT(*) AS order_count
FROM sales_data
WHERE `Shipping Status` IS NOT NULL
GROUP BY `Shipping Status`;