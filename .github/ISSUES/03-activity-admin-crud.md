Title: Admin CRUD for activities and participant management

Description:

Add admin endpoints (and optional admin UI) to create, edit, archive and delete activities. Add endpoints to view and manage participants per activity.

Acceptance criteria:
- Admin endpoints: create/edit/delete/archive activities.
- Endpoint to list participants for an activity and remove participants.
- Enforce `max_participants` when accepting signups.
- Optional: a minimal admin HTML interface under `/static/admin/`.
