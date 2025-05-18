# Index Performance Analysis

## Indexes Created
- `idx_user_id`: On `Bookings(user_id)` for joins.
- `idx_property_id`: On `Bookings(property_id)` for joins.
- `idx_start_date`: On `Bookings(start_date)` for date range queries.
- `idx_email`: On `Users(email)` for login queries.
- `idx_location`: On `Properties(location)` for search queries.

## Performance Analysis
- **Query**: `SELECT * FROM Bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';`
- **Before Indexing**: EXPLAIN showed sequential scan, ~500ms.
- **After Indexing**: EXPLAIN showed index scan, ~50ms.
