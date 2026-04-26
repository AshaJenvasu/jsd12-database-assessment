# 📂 jsd12-database-assessment

This repository contains the practical assessment for **Database Management**, covering data initialization, querying, and project application for both SQL (PostgreSQL) and NoSQL (MongoDB).

---

## 📑 Assessment Overview

### 1. Database Initialization 🏗️
- **Mock Data Setup**: Scripts to initialize and populate databases with sample business data.
- **Hybrid Approach**: Comparative study between Relational (SQL) and Document-based (NoSQL) structures.

### 2. Querying Assessment 🔍
- **Task: Shift Activity Report**:
    - **Objective**: Retrieve specific order history for a staff member (e.g., "Jane Doe") for performance reviews.
    - **Logic**: 
        - **Filtering**: Searching nested documents (e.g., `staff.first_name`).
        - **Projection**: Selecting only `order_date` and `total_price` while suppressing the `_id` field for a clean report.
    - **Cross-Platform**: Implementing the same business logic using both **MongoDB Queries** and **PostgreSQL SQL**.

### 3. Chrome Burger Landing Page 🍔
- A front-end implementation using HTML to showcase the business's digital presence.
- **Pages**: `index.html` (Landing) and `menu.html` (Product display).

---

## 📁 Repository Structure

- `01_initialize_databases/`: Setup scripts for SQL and NoSQL mock databases.
- `02_querying_assessment/`: 
    - `/mongodb`: JSON-style query scripts for document manipulation.
    - `/postgresql`: SQL scripts for relational data retrieval.
- `03_chrome-burger-landing-page/`: Assets and HTML files for the web interface.

---

## 💻 Technical Snippet (MongoDB)

Example of a targeted query to generate a staff performance report:

```javascript
db.orders.find(
  { "staff.first_name": "Jane", "staff.last_name": "Doe" },
  { order_date: 1, total_price: 1, _id: 0 }
);
