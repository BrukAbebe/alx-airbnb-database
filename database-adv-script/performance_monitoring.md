# Performance Monitoring Report

## Monitored Queries
- Query: `SELECT * FROM Bookings WHERE start_date = '2025-01-01';`
- EXPLAIN ANALYZE: Index scan, 50ms.

## Bottlenecks
- High I/O on `Bookings` for frequent date queries.

## Improvements
- Added index on `start_date` (Task 3).
- Implemented partitioning (Task 5).
- Post-optimization: Reduced to 10ms.
