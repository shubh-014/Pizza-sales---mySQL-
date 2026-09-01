# 🍕 Pizza Sales Analysis — MySQL

## 📌 Project Overview

This project analyzes pizza sales data using **MySQL** to uncover key business insights related to sales, revenue, ordering patterns, and pizza performance.

The project covers **13 business questions**, progressing from basic SQL analysis to more advanced techniques including **JOINs, aggregations, subqueries, and window functions**.

---

## 🛠️ Tools & Technologies

- MySQL
- SQL
- MySQL Workbench

---

## 📂 Dataset

The analysis uses four relational tables:

- `orders` — Order dates and order information
- `order_details` — Pizza quantities ordered
- `pizzas` — Pizza prices and pizza type IDs
- `pizza_types` — Pizza names, categories, and ingredients

---

## 🔍 Business Questions

The project answers 13 business questions covering:

1. Total number of orders
2. Total revenue generated
3. Total number of pizzas sold
4. Average order value
5. Average number of pizzas ordered per day
6. Daily order/sales trends
7. Category-wise distribution of pizzas
8. Most ordered pizza types
9. Top pizzas based on revenue
10. Revenue contribution of each pizza category
11. Top 3 pizza types by revenue within each category
12. Cumulative revenue over time
13. Additional business analysis using advanced SQL techniques

---

## 🧠 SQL Concepts Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `COUNT()`
- `SUM()`
- `AVG()`
- `JOIN`
- Subqueries
- Window Functions
- `RANK()`
- `PARTITION BY`
- Cumulative calculations
- Percentage calculations

---

## 📊 Key Results

### Revenue Contribution by Category

| Category | Revenue Contribution |
|----------|----------------------:|
| Classic  | 26.97% |
| Supreme  | 25.34% |
| Chicken  | 23.86% |
| Veggie   | 23.83% |

### Top 3 Pizzas by Revenue

| Rank | Pizza | Revenue |
|-----:|-------|--------:|
| 1 | The Barbecue Chicken Pizza | 33,643.50 |
| 2 | The Thai Chicken Pizza | 33,109.50 |
| 3 | The California Chicken Pizza | 31,847.25 |

---

## 📸 Analysis Preview

### Top 3 Pizzas by Revenue

![Top 3 Pizzas](images/top_3_pizzas.png)

### Revenue Contribution by Category

![Revenue by Category](images/revenue_by_category.png)

### Cumulative Revenue Over Time

![Cumulative Revenue](images/cumulative_revenue.png)

---

## 📁 Project Structure

```text
Pizza-sales---mySQL-/
│
├── README.md
│
├── pizza_sales_analysis.sql
│
├── data/
│   ├── orders.csv
│   ├── order_details.csv
│   ├── pizzas.csv
│   └── pizza_types.csv
│
└── images/
    ├── top_3_pizzas.png
    ├── revenue_by_category.png
    └── cumulative_revenue.png
