# 🛒 E-Commerce SQL Project

This project is a complete **E-Commerce Database Management System** built using **MySQL**.  
It demonstrates how an online shopping platform manages users, products, orders, payments, and inventory using SQL.

---

## 📌 Project Features

- User Management
- Product & Category Management
- Order Processing
- Payment Tracking
- Inventory (Stock) Management
- Business Reports using Advanced SQL Queries

---

## 🗂️ Project Structure

Ecommerce-SQL-Project/
│
├── database/
│   └── ecommerce.sql
│
├── queries/
│   ├── basic_queries.sql
│   ├── joins.sql
│   ├── transactions.sql
│   └── advanced_queries.sql
│
└── README.md

---

## 🧱 Database Tables

- **users** – Stores customer details  
- **categories** – Product categories  
- **products** – Product information & stock  
- **orders** – Order details  
- **order_items** – Products inside orders  
- **payments** – Payment information  

---

## 🧠 SQL Concepts Used

- DDL (CREATE DATABASE, CREATE TABLE)
- DML (SELECT, INSERT, UPDATE)
- PRIMARY KEY & FOREIGN KEY
- JOINS (INNER JOIN)
- SUBQUERIES
- CORRELATED SUBQUERIES
- AGGREGATE FUNCTIONS (SUM, COUNT)
- GROUP BY & HAVING
- TRANSACTIONS (COMMIT, ROLLBACK)

---

## 📊 Advanced Queries Included

- Top selling products
- Revenue per customer
- Monthly sales report
- Category-wise revenue
- Customers who never ordered
- Products never ordered
- Low stock alert
- Payment failure report

---

## 🛠️ Tools Used

- MySQL
- MySQL Command Line Client / MySQL Workbench
- Visual Studio Code

---

## ▶️ How to Run the Project

1. Open **MySQL Command Line Client**
2. Login using root password
3. Run:
   ```sql
   SOURCE path/to/database/ecommerce.sql;