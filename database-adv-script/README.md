# Airbnb Database Joins Queries

This directory contains SQL queries demonstrating the use of INNER JOIN, LEFT JOIN, and FULL OUTER JOIN for the Airbnb database.

- **File**: `joins_queries.sql`
- **Queries**:
  - INNER JOIN: Retrieves bookings with user details.
  - LEFT JOIN: Retrieves properties with reviews, including those without reviews.
  - FULL OUTER JOIN: Retrieves all users and bookings, including unmatched records.

# Airbnb Database Subqueries

- **File**: `subqueries.sql`
- **Queries**:
  - Non-correlated subquery: Finds properties with average rating > 4.0.
  - Correlated subquery: Finds users with more than 3 bookings.

# Airbnb Database Aggregations and Window Functions

- **File**: `aggregations_and_window_functions.sql`
- **Queries**:
  - Aggregation: Counts total bookings per user.
  - Window function: Ranks properties by number of bookings.
