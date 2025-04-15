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
