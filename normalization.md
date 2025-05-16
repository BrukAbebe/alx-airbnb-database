# Airbnb Database Normalization Report

## Objective
Ensure the Airbnb database schema is in Third Normal Form (3NF) to eliminate redundancy and improve data integrity.

---

## Normalization Steps

### 1. First Normal Form (1NF)
- All tables have atomic values (no arrays or multivalued fields).
- Each record is uniquely identifiable by a primary key.

### 2. Second Normal Form (2NF)
- All non-key attributes are fully functionally dependent on the **entire primary key**.
- Since all primary keys are single-column UUIDs, partial dependency does not apply.

### 3. Third Normal Form (3NF)
- No transitive dependencies were found.
- All non-key fields depend only on the primary key.

---

## Table-by-Table Review

| Table     | 3NF Compliant | Notes |
|-----------|---------------|-------|
| User      | ✅            | No derived/transitive data |
| Property  | ✅            | All fields describe the property directly |
| Booking   | ✅            | No calculated or redundant fields |
| Payment   | ✅            | Linked correctly to Booking |
| Review    | ✅            | Ratings normalized, no transitive dependency |
| Message   | ✅            | Messaging between users well-structured |

---

## Optional Future Improvements
- Normalize `role`, `status`, and `payment_method` into separate tables if flexibility is needed.
- Currently acceptable as enums for a small system.

---

## Conclusion
The current Airbnb schema is fully normalized to **Third Normal Form (3NF)**. No changes are required to meet normalization standards.

