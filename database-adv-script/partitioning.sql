-- Create partitioned table
CREATE TABLE Bookings (
    booking_id SERIAL,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),
    PRIMARY KEY (booking_id, start_date)
) PARTITION BY RANGE (start_date);

-- Create partitions
CREATE TABLE bookings_2024 PARTITION OF Bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
CREATE TABLE bookings_2025 PARTITION OF Bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
