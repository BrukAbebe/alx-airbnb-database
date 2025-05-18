# Partitioning Performance Report

## Partitioning
- Table: `Bookings`, partitioned by `start_date` (range).
- Partitions: `bookings_2024`, `bookings_2025`.

## Performance
- Query: `SELECT * FROM Bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-06-30';`
- Before: Full table scan, ~1s.
- After: Partition scan, ~200ms.
