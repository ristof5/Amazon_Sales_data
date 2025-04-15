# 📊 Amazon Sales Data 2025 - SQL Analysis

Ini adalah proyek eksplorasi data penjualan Amazon tahun 2025 menggunakan SQL Server. Tujuan dari analisis ini adalah untuk memahami pola perilaku konsumen, tren produk, dan performa penjualan bulanan.

## 🗂️ Dataset
Dataset yang digunakan bernama `amazon_sales_data_2025` dan berisi informasi seperti:
- `Order_ID` – tanggal transaksi
- `Date` – tanggal transaksi
- `Product` – nama produk
- `Category` – kategori produk
- `Price` - harga
- `Quantity` - quantity
- `Total_Sales` – total nilai penjualan
- `Customer_Name` – nama pelanggan
- `Customer_Location` - lokasi pelanggan
- `Payment_Method` - metode pembayaran
- `Status` - Pending, Completed, Cancelled


## 📌 Fitur Analisis

### 🔍 1. Melihat Seluruh Data
```sql
SELECT *
FROM amazon_sales_data_2025
```
### 2. Total Sales Per Bulan
```sql
SELECT FORMAT(Date, 'yyyy-MM') AS Sales_Month,
       SUM(Total_Sales) AS Total_Monthly
FROM amazon_sales_data_2025
WHERE Date BETWEEN '2025-03-01' AND '2025-03-30'
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Total_Monthly DESC
```
### 3. Top Pelanggan 
```sql
SELECT TOP 5 Customer_Name, COUNT(Customer_Name) AS Total_transaction
FROM amazon_sales_data_2025
GROUP BY Customer_Name
ORDER BY Total_transaction DESC
```
dan lain - lain

##📎 Sumber Data

Data diambil dari dataset publik di Kaggle https://www.kaggle.com/datasets/zahidmughal2343/amazon-sales-2025.
