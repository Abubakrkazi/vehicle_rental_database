-- =====================================
-- VEHICLE RENTAL SYSTEM DATABASE SCHEMA
-- =====================================

-- =====================
-- USERS TABLE
-- =====================
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
phone VARCHAR(20),
role VARCHAR(20)
CHECK (role IN ('Admin', 'Customer'))
NOT NULL
);

-- =====================
-- VEHICLES TABLE
-- =====================
CREATE TABLE vehicles (
id SERIAL PRIMARY KEY,
vehicle_name VARCHAR(100) NOT NULL,
vehicle_type VARCHAR(20)
CHECK (vehicle_type IN ('Car', 'Bike', 'Truck'))
NOT NULL,
model VARCHAR(50),
registration_number VARCHAR(50) UNIQUE NOT NULL,
rental_price_per_day NUMERIC(10,2) NOT NULL,
availability_status VARCHAR(20)
CHECK (availability_status IN ('Available', 'Rented', 'Maintenance'))
NOT NULL
);

-- =====================
-- BOOKINGS TABLE
-- =====================
CREATE TABLE bookings (
id SERIAL PRIMARY KEY,

```
user_id INT NOT NULL,
vehicle_id INT NOT NULL,

start_date DATE NOT NULL,
end_date DATE NOT NULL,

booking_status VARCHAR(20)
    CHECK (booking_status IN ('Pending', 'Confirmed', 'Completed', 'Cancelled'))
    NOT NULL,

total_cost NUMERIC(10,2) NOT NULL,

CONSTRAINT fk_user
    FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE,

CONSTRAINT fk_vehicle
    FOREIGN KEY (vehicle_id)
    REFERENCES vehicles(id)
    ON DELETE CASCADE
```

);
