Title: Add authentication and an admin role

Description:

Protect admin endpoints and add a simple user system. Implement authentication so we can restrict management operations to authorized users.

Acceptance criteria:
- Add user model (email, hashed_password, is_admin flag or roles table).
- Implement JWT or session-based auth for the API.
- Protect admin endpoints (CRUD for activities, viewing all enrollments) behind admin role.
- Provide a way to create an initial admin user (seed or management command).

Notes:
- Consider using `fastapi-users` or `fastapi-jwt-auth` for fast integration.
