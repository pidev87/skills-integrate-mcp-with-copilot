Title: Admin dashboard and reports (registrations, capacity, per-plan stats)

Description:

Add a lightweight admin dashboard to visualize important metrics like registrations over time, activity fill-rate, top activities, and members per plan.

Acceptance criteria:
- Endpoint(s) that return JSON metrics for charts (monthly registrations, activity occupancy).
- A minimal dashboard page (`/static/admin/dashboard.html`) that consumes these endpoints and shows charts (Chart.js or similar).

Notes:
- Keep visualization client-side to avoid adding heavy additional dependencies.
