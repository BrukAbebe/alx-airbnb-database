-- Initial query
SELECT b.booking_id, b.start_date, u.name, p.title, pay.amount
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
JOIN Payments pay ON b.booking_id = pay.booking_id;

-- Optimized query (after indexing and removing redundant joins)
SELECT b.booking_id, b.start_date, u.name, p.title, pay.amount
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
JOIN Payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';
