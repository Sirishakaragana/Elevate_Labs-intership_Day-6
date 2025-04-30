SELECT 
    strftime('%Y', order_purchase_timestamp) AS year,
    strftime('%m', order_purchase_timestamp) AS month
FROM orders
GROUP BY year, month;
