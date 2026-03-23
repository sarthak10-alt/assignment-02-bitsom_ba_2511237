# Assignment 01 - Data Engineering

## Overview
This project focuses on transforming a denormalized dataset into a normalized relational database structure. The goal is to eliminate redundancy, improve data integrity, and design an efficient schema.

---

## Dataset Description
The dataset contains order-level information including:
- Customer details
- Product details
- Sales representative details
- Order transactions

The data is initially stored in a flat structure (`orders_flat.csv`), which leads to redundancy and anomalies.

---

## Tasks Performed

### 1. Anomaly Analysis
Identified:
- Insert Anomaly
- Update Anomaly
- Delete Anomaly

---

### 2. Schema Design
The dataset was normalized into the following tables:
- Customers
- Products
- Sales Representatives
- Orders
- Order Items

This design follows Third Normal Form (3NF).

---

### 3. SQL Queries
Implemented queries to:
- Retrieve customer and order details
- Calculate total revenue
- Identify top customers
- Analyze product sales

---

## Conclusion
The normalized schema improves:
- Data consistency
- Query efficiency
- Scalability