Title: Persist activities, students and related models (DB + migrations)

Description:

Currently the application stores activities in memory which resets on restart. Add persistent storage and migrations so data survives restarts and can be queried safely.

Acceptance criteria:
- Add a database (SQLite for dev) and ORM models for:
  - Activity (name, description, schedule, max_participants)
  - Student (email, name, grade)
  - Participation / Enrollment (student_id, activity_id, joined_at)
- Provide migrations and a simple seed to populate sample activities.
- Update endpoints to read/write from the DB instead of the in-memory dict.

Notes / Implementation ideas:
- Use SQLModel / SQLAlchemy + Alembic or FastAPI-compatible ORM (Tortoise, SQLModel).
- Keep initial scope small: only the models above and migration commands.
