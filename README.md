# Vehicle_Rental_Database

## Overview

This project is a simplified Vehicle Rental System database designed to manage users, vehicles, and rental bookings. The database demonstrates the use of relational database concepts such as primary keys, foreign keys, table relationships, and SQL queries.

The main goal of this project is to design a structured database schema, create an Entity Relationship Diagram (ERD), and write SQL queries to retrieve and analyze data.
## Database Design

The system consists of three main tables:

### 1. Users

This table stores information about customers and administrators.

**Attributes:**

* id (Primary Key)
* name
* email (Unique)
* password
* phone
* role (Admin / Customer)

### 2. Vehicles

This table stores vehicle information available for rent.

**Attributes:**

* id (Primary Key)
* vehicle_name
* vehicle_type (Car / Bike / Truck)
* model
* registration_number (Unique)
* rental_price_per_day
* availability_status (Available / Rented / Maintenance)

---

### 3. Bookings

This table stores rental booking records.

**Attributes:**

* id (Primary Key)
* user_id (Foreign Key)
* vehicle_id (Foreign Key)
* start_date
* end_date
* booking_status (Pending / Confirmed / Completed / Cancelled)
* total_cost
## Relationships

The database follows these relationships:

* One User can create multiple Bookings.
* One Vehicle can be associated with multiple Bookings.
* Each Booking belongs to exactly one User.
* Each Booking belongs to exactly one Vehicle.

Relationship Summary:

Users (1) ───────< Bookings >─────── (1) Vehicles

---

## Entity Relationship Diagram (ERD)

### ERD Screenshot

![ERD](./ERD.png)

### Lucidchart ERD Link

Paste your public Lucidchart link here:"https://lucid.app/lucidchart/b993fe99-ebac-4c51-bd7a-82af62391b52/edit?viewport_loc=-229%2C-1435%2C2375%2C1192%2C0_0&invitationId=inv_0a22a2a5-345a-4bf5-8c34-b3c6f00111b9"
## SQL Queries

### Query 1: INNER JOIN

Retrieve booking information along with customer name and vehicle name.

### Query 2: NOT EXISTS

Find all vehicles that have never been booked.

### Query 3: WHERE

Retrieve all available vehicles of type Car.

### Query 4: GROUP BY and HAVING

Find vehicles that have more than two bookings.

---

## Query Output Screenshots

### Query 1 Result

![Query 1](./screenshots/query1.png)

### Query 2 Result

![Query 2](./screenshots/query2.png)

### Query 3 Result

![Query 3](./screenshots/query3.png)

### Query 4 Result

![Query 4](./screenshots/query4.png)

---

## Technologies Used

* PostgreSQL
* SQL
* Beekeeper Studio
* Lucidchart

---

## Project Structure
vehicle_rental_database
│
├── README.md
├── SQL/
     ├──schema.sql
     ├──queries.sql
 
├── ERD.png
│
└── screenshots/
    ├── query1.png
    ├── query2.png
    ├── query3.png
    └── query4.png
## Learning Outcomes

Through this project, I learned:

* Database schema design
* Primary Key and Foreign Key relationships
* One-to-Many relationships
* Writing SQL queries using JOIN
* Using NOT EXISTS for filtering records
* Applying WHERE conditions
* Using GROUP BY and HAVING for aggregation
* Creating and understanding ERD diagrams

