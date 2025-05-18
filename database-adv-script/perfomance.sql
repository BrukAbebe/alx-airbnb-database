-- Initial query
    EXPLAIN ANALYZE
    SELECT b.booking_id, b.start_date, b.end_date, b.status, u.name, u.email, p.title, p.price, pay.amount, pay.payment_date
    FROM Bookings b
    JOIN Users u ON b.user_id = u.user_id
    JOIN Properties p ON b.property_id = p.property_id
    JOIN Payments pay ON b.booking_id = pay.booking_id
    WHERE b.status = 'confirmed' AND b.start_date BETWEEN '2025-01-01' AND '2025-12-31';

    -- Optimized query
    EXPLAIN ANALYZE
    SELECT b.booking_id, b.start_date, b.end_date, b.status, u.name, p.title, pay.amount
    FROM Bookings b
    JOIN Users u ON b.user_id = u.user_id
    JOIN Properties p ON b.property_id = p.property_id
    JOIN Payments pay ON b.booking_id = pay.booking_id
    WHERE b.status = 'confirmed' AND b.start_date BETWEEN '2025-01-01' AND '2025-12-31';
