-- INNER JOIN: Retrieve all bookings and their respective users
SELECT b.id AS booking_id, u.id AS user_id, u.name AS user_name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews (including properties without reviews)
SELECT p.property_id, p.title, p.price, r.review_id, r.rating, r.comment
FROM Properties p
LEFT JOIN Reviews r ON p.property_id = r.property_id
ORDER BY p.property_id;

-- FULL OUTER JOIN simulation using UNION (for MySQL)
SELECT u.id AS user_id, u.name, b.id AS booking_id
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.id AS user_id, u.name, b.id AS booking_id
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
