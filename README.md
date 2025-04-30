# Elevate_Labs-intership_Day-6
Olist E-Commerce Dataset Analysis using SQLite
This project focuses on performing SQL-based data analysis using the Olist e-commerce dataset stored in an SQLite database (olist.sqlite). The analysis extracts useful business metrics such as revenue, order volume, and time-based trends.

Dataset Used
olist.sqlite – contains various tables like:

orders

order_items

order_payments

customers

products

sellers

Key SQL Concepts Used
This analysis answers various business questions using core SQL features in SQLite:

Date Extraction:

SQLite doesn’t support EXTRACT(). Instead, strftime('%Y', date) and strftime('%m', date) are used to extract year and month.

Grouping:

Used GROUP BY year, month to organize data for monthly reports.

Revenue Calculation:

Revenue is computed using SUM(price + freight_value) from the order_items table.

Order Volume:

Monthly order volume is calculated using COUNT(DISTINCT order_id).

Sorting:

ORDER BY total_revenue DESC is used to sort months by revenue.

Filtering by Time:

To restrict data to a specific period, e.g., only 2017, we use:

sql
Copy
Edit
WHERE strftime('%Y', order_purchase_timestamp) = '2017'
Goal
To demonstrate practical SQL skills using real-world datasets and extract meaningful business insights like:

Monthly revenue

Sales volume

Seasonal patterns in orders

High/low performing months
Tools Used
SQLite

DB Browser for SQLite
