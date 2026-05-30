-- =========================
-- QUERY 1: INNER JOIN
-- =========================
-- Booking info + customer name + vehicle name

SELECT 
    b.id AS booking_id,
    u.name AS customer_name,
    v.vehicle_name,
    b.start_date,
    b.end_date,
    b.total_cost
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN vehicles v ON b.vehicle_id = v.id;

-- =========================
-- QUERY 2: NOT EXISTS
-- =========================
-- Vehicles that have NEVER been booked

SELECT *
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.id
);
-- =========================
-- QUERY 3: WHERE
-- =========================
-- All available cars

SELECT *
FROM vehicles
WHERE vehicle_type = 'Car'
AND availability_status = 'Available';
-- =========================
-- QUERY 4: GROUP BY + HAVING
-- =========================
-- Vehicles with more than 2 bookings

SELECT 
    vehicle_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY vehicle_id
HAVING COUNT(*) > 2;