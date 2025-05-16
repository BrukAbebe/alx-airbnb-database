# Airbnb Clone – Sample Data Seeder (Ethiopian Context)

This file contains SQL insert statements to populate the Airbnb database with example data for development and testing.

## Users
- 3 users with Ethiopian names:
  - **Hilina Abebe** – guest
  - **Samuel Tesfaye** – host
  - **Rediet Mengistu** – admin

## Properties
- 2 properties owned by **Samuel**:
  - *Bole Cozy Apartment* in **Addis Ababa**
  - *Lake Tana View Lodge* in **Bahir Dar**

## Bookings
- Hilina booked both properties:
  - One **confirmed**
  - One **pending**

## Payments
- A PayPal payment for one booking is recorded

## Reviews
- Hilina left a review in **Amharic** with a 5-star rating

## Messages
- Hilina sent a message in **Amharic** to the host Samuel asking for availability

## Usage
To load the sample data, run:

```bash
psql -U your_username -d your_database -f seed.sql
