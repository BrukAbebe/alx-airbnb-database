-- Aggregation: Total bookings per user
SELECT u.user_id, u.name, COUNT(b.booking_id) as total_bookings
FROM Users u
LEFT JOIN Bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
ORDER BY total_bookings DESC;

-- Window function: Rank properties by booking count using ROW_NUMBER
SELECT p.property_id, p.title,
       COUNT(b.booking_id) as booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) as booking_rank
FROM Properties p
LEFT JOIN Bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.title
ORDER BY booking_rank;

-- Window function: Rank properties by booking count using RANK
SELECT p.property_id, p.title,
       COUNT(b.booking_id) as booking_count,
       RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) as booking_rank
FROM Properties p
LEFT JOIN Bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.title
ORDER BY booking_rank;
