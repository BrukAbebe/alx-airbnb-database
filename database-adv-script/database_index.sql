-- Analyze query performance before adding index
    EXPLAIN ANALYZE
    SELECT booking_id, user_id, property_id, start_date, end_date, status
    FROM Bookings
    WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

    -- Create indexes for high-usage columns
    CREATE INDEX idx_user_id ON Bookings(user_id);
    CREATE INDEX idx_property_id ON Bookings(property_id);
    CREATE INDEX idx_start_date ON Bookings(start_date);
    CREATE INDEX idx_email ON Users(email);
    CREATE INDEX idx_location ON Properties(location);

    -- Analyze query performance after adding index
    EXPLAIN ANALYZE
    SELECT booking_id, user_id, property_id, start_date, end_date, status
    FROM Bookings
    WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
