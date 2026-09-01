# 🍕 Pizza Sales Analysis — MySQL

## 📌 Project Overview

This project analyzes pizza sales data using **MySQL** to uncover key business insights related to sales, revenue, customer ordering patterns, and pizza performance.

The analysis progresses from basic SQL queries to more advanced concepts such as **JOINs, aggregations, subqueries, and window functions**.

---

## 🛠️ Tools & Technologies

- **MySQL Workbench**

---

## 📂 Dataset

The dataset consists of four relational tables:

- `orders` — Order date and order information
- `order_details` — Pizza quantities ordered in each order
- `pizzas` — Pizza prices and pizza type IDs
- `pizza_types` — Pizza names, categories, and ingredients

---

## 🔍 Analysis Performed

The project answers **13 business questions** covering:

### Basic Analysis
- Total number of orders
- Total revenue generated
- Total number of pizzas sold
- Average order value
- Average number of pizzas ordered per day

### Sales & Product Analysis
- Daily order trends
- Category-wise pizza distribution
- Most ordered pizza types
- Top-performing pizzas based on revenue
- Revenue contribution of each pizza category

### Advanced SQL Analysis
- Top 3 pizza types by revenue within each category
- Cumulative revenue over time
- Additional business insights using subqueries and window functions

---

## 💡 Key Insights

The analysis provides insights into:

- Which pizza categories contribute the most revenue
- Which pizza types perform best in terms of sales and revenue
- How pizza orders and revenue change over time
- The distribution of pizzas across different categories
- The highest-performing products within each category

---

## 🧠 SQL Concepts Used

This project demonstrates practical use of:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Aggregate Functions
  - `SUM()`
  - `COUNT()`
  - `AVG()`
- `JOIN`
- Subqueries
- Window Functions
- `RANK()`
- `PARTITION BY`
- Cumulative calculations
- Revenue and percentage calculations

---

## 📊 Example Findings

### Revenue Contribution by Category

| Category | Revenue Contribution |
|----------|----------------------:|
| Classic  | 26.97% |
| Chicken  | 23.86% |
| Supreme  | 25.34% |
| Veggie   | 23.83% |

### Top 3 Pizzas by Revenue

| Rank | Pizza | Revenue |
|-----:|-------|--------:|
| 1 | The Barbecue Chicken Pizza | 33,643.50 |
| 2 | The Thai Chicken Pizza | 33,109.50 |
| 3 | The California Chicken Pizza | 31,847.25 |

---

## 📁 Project Structure

```text
Pizza-sales---mySQL-
│
├── README.md
├── pizza_sales_analysis.sql
└── data/
    ├── orders.csv
    ├── order_details.csv
    ├── pizzas.csv
    └── pizza_types.csv
