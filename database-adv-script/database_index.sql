CREATE INDEX idx_user_id ON Bookings(user_id);
CREATE INDEX idx_property_id ON Bookings(property_id);
CREATE INDEX idx_start_date ON Bookings(start_date);
CREATE INDEX idx_email ON Users(email);
CREATE INDEX idx_location ON Properties(location);
