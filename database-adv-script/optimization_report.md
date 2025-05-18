# Query Optimization Report

## Initial Query
- Retrieved bookings, user, property, and payment details.
- EXPLAIN: Full table scans, ~700ms.

## Issues
- No filtering, scanning all rows.
- Missing indexes on join columns.

## Optimizations
- Added `WHERE b.status = 'confirmed'` to reduce rows.
- Applied indexes (from Task 3).
- EXPLAIN: Index scans, ~100ms.
