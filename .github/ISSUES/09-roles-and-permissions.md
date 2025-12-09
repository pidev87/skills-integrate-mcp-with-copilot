Title: Roles & permissions (admin, staff, student)

Description:

Add role-based access control to protect admin functionality and allow multiple staff roles with different permissions.

Acceptance criteria:
- Basic roles: `admin`, `staff`, and `student`.
- Middleware to protect endpoints based on role.
- Seeded initial roles and a command to assign roles to users.

Notes:
- Can be implemented simply with an `is_admin` flag for now and improved later.
