# SQL & Pandas Data Analysis

## Database Overview
This repository contains an exploratory data analysis of the **Northwind SQLite Database**. The dataset represents a wholesale food supply business containing transactional records, customer info, product categories, and ordering trends.

## Core Business Questions Addressed
1. **Top 10 Selling Products:** Which products drive the highest volume?
2. **Top 10 Customers by Revenue:** Who are the high-value clients?
3. **Monthly Sales Trends:** How does revenue fluctuate over time?
4. **Best-Performing Product Categories:** Which product categories generate the most revenue?
5. **Customer Purchase Frequency:** What is the distribution of orders per customer?

## Key Business Insights
1. **Category Dominance:** Beverages and Dairy Products drive over 40% of overall business revenue, highlighting key areas for inventory focus.
2. **Concentration of Top Customers:** A small fraction of key clients (such as *QUICK-Stop* and *Ernst Handel*) generate a major portion of high-value orders, making retention programs critical.
3. **High-Volume Sellers:** Products like *Camembert Pierrot* and *Gorgonzola Telino* rank in the top 10 by volume, serving as strong entry-level purchase drivers.
4. **Seasonal Fluctuations:** Sales peak toward late Q3 and early Q4, indicating potential holiday demand patterns.
5. **Repeat Purchase Behavior:** A significant portion of customers have placed more than 10 orders, demonstrating steady customer loyalty.

## Repository Structure
* `queries.sql`: Clean SQL queries for all core questions.
* `analysis.ipynb`: Execution notebook with Pandas DataFrames and visualizations.
* `README.md`: Project summary and insights.
