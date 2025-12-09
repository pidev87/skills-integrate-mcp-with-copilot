Title: Support paid plans and subscriptions (optional)

Description:

If some activities will be paid, we need plans and subscriptions to model pricing and duration.

Acceptance criteria:
- Add Plan model (name, price, duration_days, description).
- Add Subscription model linking student -> plan with start_date and end_date.
- Endpoints to create/renew/cancel subscriptions.
- Basic validation for overlapping subscriptions.

Notes:
- This feature is optional; implement only if paid enrollments are required.
