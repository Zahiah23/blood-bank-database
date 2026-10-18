# Blood Bank Management Database

A MySQL database system that organizes hospital blood bank operations: tracking donors, donations, blood inventory by type, and hospital department requests. Built as a Database course project at Prince Mugrin University.

## Overview
Hospitals need to manage different blood types, monitor available stock, and respond to department requests. This system centralizes that data in a structured relational database.

## Database Design
The schema has 7 related tables with primary and foreign keys:
- **System_Admin**: system users and their roles
- **Hospital_Department**: departments that request blood
- **Donor** and **Contact_number**: donor records and phone numbers
- **Donation**: donation records linked to donors and inventory
- **Blood_Inventory**: available quantity and minimum level per blood type
- **Blood_request**: department requests by blood type, quantity, and status

## Files
- `blood_bank.sql`: creates the database and tables, inserts sample data, and runs sample queries
- `ER_diagram.png`: Entity-Relationship diagram

## How to Run
1. Open MySQL (Workbench or command line).
2. Run `blood_bank.sql`.
3. The script creates `BloodBankDB2`, fills it with sample data, and displays each table.

All data is fictional and for demonstration only.

## Tech
MySQL

## Team
Developed as a team project at Prince Mugrin University.

## My Contribution
- Designed one of the project's Entity-Relationship (ER) diagrams
- Wrote the MySQL code to implement the database
