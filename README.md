# BI_project

## Full Project Overview

This project was conducted in four stages: database schema creation, ETL process implementation, business intelligence reporting, and interactive dashboard development. The goal was to create an end-to-end solution for managing, analyzing, and reporting on sales data using SQL Server, Tableau, and Power BI.

## Stage 1: Database Schema Design and Implementation
In the first stage, I designed a normalized database schema using SQL Server Management Studio (SSMS) to manage entities such as students, courses, departments, instructors, and topics. This stage focused on ensuring data integrity and query performance.

## Key Achievements:

Created a relational schema with primary/foreign key relationships for students, courses, departments, and instructors.
Developed stored procedures for reporting, such as student counts per department.
Created triggers for auditing and business rule enforcement.
Designed views for simplified querying and data aggregation.
Optimized query performance with indexing.

## Stage 2: ETL Process Implementation and Data Warehouse Development
In the second stage, I utilized SQL Server Integration Services (SSIS) to extract and transform data from flat files and databases. The transformed data was integrated into a sales data warehouse for analysis.

## Key Achievements:

Automated data extraction and transformation using SSIS, with transformations applied via Condition Split and Multicast.
Integrated data using Merge and Union components.
Built a sales data warehouse with dimensions such as Channel, Salesman, Product, and Customer.
Calculated key metrics like Quantity, Price per Quantity, and Sales Count.
Generated reports and analyzed data using SQL Server Reporting Services (SSRS).

## Stage 3: Data Visualization and KPI Reporting with Tableau
In the third stage, I developed KPIs and visualized the sales data using Tableau to provide key business insights.

## Key KPIs:

Quantity: Total units sold, helping with inventory management and product popularity assessment.
Profit per Order: Average profit per order, aiding in operational efficiency evaluation.
Sales per Order: Average order value, reflecting customer purchasing behavior and cross-selling effectiveness.
Total Profit: Net income to assess business strategies related to cost management and revenue generation.
Total Sales: Total revenue generated, providing insights into customer acquisition and growth.
Profit Ratio: Percentage of revenue converted into profit after costs.

## Stage 4: Power BI Dashboard Design and Alert System
In the final stage, I designed and deployed interactive dashboards using Power BI, providing stakeholders with real-time data insights and alert mechanisms.

## Key Features:

Dashboard Design: Created dashboards with visual elements like charts, graphs, and tables, offering a clear and accessible user experience.
Interactivity: Implemented features such as data filters, drill-down options, and real-time exploration of data.
Dashboard Scheduling: Scheduled automatic daily data refreshes and shared dashboards with key stakeholders.
Alerts and Notifications: Set up automated alerts to notify users when specific thresholds were crossed, unusual patterns emerged, or specific events occurred.
Delivery Channels: Alerts were sent via email, push notifications, and in-app notifications within Power BI.
Alert Management: Configured alert triggers and delivery preferences, as well as a history of past alerts.
Technologies Used:

SQL Server Integration Services (SSIS) for ETL processes.
SQL Server Reporting Services (SSRS) for reporting.
Tableau for KPI creation and visualization.
Power BI for interactive dashboard creation, alert systems, and stakeholder reporting.
Project Outcomes:

Built a comprehensive and scalable data warehouse for sales analysis.
Automated data extraction, transformation, and reporting, ensuring real-time insights.
Developed interactive dashboards with real-time alerts and reporting for decision-making.
Provided actionable business intelligence through KPIs and visual reports using Tableau and Power BI.
