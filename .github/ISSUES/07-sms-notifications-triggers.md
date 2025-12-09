Title: SMS / notifications and templated triggers

Description:

Add templated notification triggers for key events (signup, payment received, subscription expiring, etc.) and integrate with an SMS or email provider.

Acceptance criteria:
- A `NotificationTrigger` seed or config listing common triggers and message templates.
- Integration code to send SMS or email via a provider with retry/backoff and balance checking.
- Ability to enable/disable specific triggers from settings.

Notes:
- Start with email or a test SMS gateway; production credentials should be stored in env.
