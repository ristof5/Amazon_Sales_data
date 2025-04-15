-- view a data
SELECT *
FROM amazon_sales_data_2025

SELECT DATE,Customer_Name
FROM amazon_sales_data_2025
WHERE Customer_Name = 'Jane Smith'
ORDER BY DATE DESC

SELECT Date, SUM(Total_Sales) AS Total_Monthly
FROM amazon_sales_data_2025
WHERE DATE BETWEEN '2025-03-01' AND '2025-03-30'
GROUP BY DATE 
ORDER BY Total_Monthly DESC;

--Cara menghitung total sales perbulannya
SELECT FORMAT(Date, 'yyyy-MM') AS Sales_Month,
       SUM(Total_Sales) AS Total_Monthly
FROM amazon_sales_data_2025
WHERE Date BETWEEN '2025-03-01' AND '2025-03-30'
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Total_Monthly DESC;

--top customer yang terdata sering muncul atau beli
SELECT TOP 5 Customer_Name, COUNT(Customer_Name) AS Total_transaction
FROM amazon_sales_data_2025
GROUP BY Customer_Name
ORDER BY Total_transaction DESC

SELECT TOP 5 
    Customer_Name, 
    COUNT(*) AS Total_Transaction,
    MIN(Date) AS First_Purchase,
    MAX(Date) AS Last_Purchase
FROM amazon_sales_data_2025
GROUP BY Customer_Name
ORDER BY Total_Transaction DESC;

-- Produk Terlaris
SELECT Product, count(Product)AS Kemunculan_Produk, 
	   COUNT(Category) AS 'Kemunculan Kategori'
FROM amazon_sales_data_2025
GROUP BY Product
ORDER BY Kemunculan_Produk DESC

-- Product Trends
SELECT Product, Format(Date, 'yyyy-MM')AS bulan, 
	   count(Product) AS product_rate,
	   sum(Total_Sales) AS total_penjualan_bulanan
FROM amazon_sales_data_2025
GROUP BY Format(Date, 'yyyy-MM'), Product
ORDER BY  total_penjualan_bulanan DESC
