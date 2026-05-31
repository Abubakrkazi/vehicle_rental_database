-- =====================================
-- QUERY 1: INNER JOIN
-- Retrieve booking information along with
-- customer name and vehicle name
-- =====================================

SELECT
b.id AS booking_id,
u.name AS customer_name,
v.vehicle_name,
b.start_date,
b.end_date,
b.booking_status
FROM bookings b
INNER JOIN users u
ON b.user_id = u.id
INNER JOIN vehicles v
ON b.vehicle_id = v.id;

-- =====================================
-- QUERY 2: NOT EXISTS
-- Find all vehicles that have never been booked
-- =====================================

SELECT *
FROM vehicles v
WHERE NOT EXISTS (
SELECT 1
FROM bookings b
WHERE b.vehicle_id = v.id
);

-- =====================================
-- QUERY 3: WHERE
-- Retrieve all available vehicles of type Car
-- =====================================

SELECT *
FROM vehicles
WHERE vehicle_type = 'Car'
AND availability_status = 'Available';

-- =====================================
-- QUERY 4: GROUP BY + HAVING
-- Find vehicles with more than 2 bookings
-- =====================================

SELECT
v.vehicle_name,
COUNT(b.id) AS total_bookings
FROM vehicles v
INNER JOIN bookings b
ON v.id = b.vehicle_id
GROUP BY v.vehicle_name
HAVING COUNT(b.id) > 2;
