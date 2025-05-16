# Database Schema for Airbnb Clone

This SQL script defines the database schema for the Airbnb project.

## Tables Included

- **User**: Manages all users (guests, hosts, admin)
- **Property**: Listings posted by hosts
- **Booking**: Tracks bookings between users and properties
- **Payment**: Handles booking payments
- **Review**: User reviews for properties
- **Message**: Direct messages between users

## Key Features

- Proper use of **UUID** for primary keys
- Strong **foreign key** constraints for data integrity
- **CHECK constraints** to validate enum values (roles, status, etc.)
- Indexed fields for optimal query performance

## File
- `schema.sql`: SQL script to create all tables and indexes
