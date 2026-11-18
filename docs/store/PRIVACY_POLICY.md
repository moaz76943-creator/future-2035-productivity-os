# FUTURE 2035 — Privacy Policy

_Draft for review before publication. Effective date: to be set on release. Contact: to be added by the publisher._

FUTURE 2035 is a local-first productivity app. This policy describes what the app does with your data, based on the app's source code (version 1.0.0).

## Data you enter stays on your device
Tasks, projects, calendar events, notes, flashcards, review history, goals, habits, focus sessions and settings are stored in a database on your device. The database is encrypted at rest (SQLCipher-compatible encryption via `sqlite3mc`); its key is kept in Android's secure storage (`flutter_secure_storage`). There is no account, no sign-in and no cloud sync.

## No analytics, advertising or tracking
The app contains no analytics, advertising, crash-reporting or tracking SDKs, and it does not send usage data anywhere.

## Optional AI assistant (off by default)
The on-device assistant tools (plan my day, extract tasks, make flashcards, workload) run locally. The optional cloud summary works only if **you** enable the assistant and enter your own HTTPS endpoint and API key:
- Only `https://` endpoints are accepted.
- Before a note's text is sent, the app asks for your consent (once, or always for that provider); declining sends nothing.
- Your API key is stored in Android secure storage, never in backups or logs.
- The provider you choose processes the text under its own privacy policy.

## Backups you create
Backups are files you export yourself. They are encrypted with a password you choose (Argon2id key derivation, AES-256-GCM). The app cannot recover a lost backup password. You decide where the file is saved or shared. Android cloud auto-backup of app data is disabled (`allowBackup=false`).

## Permissions
- **Notifications** (Android 13+, asked only when you start a focus session or turn on reminders): task, event, habit, review and focus alerts.
- **Exact alarms** (Android 12 and older only): on-time reminders. Newer Android versions use inexact reminders.
- **Run at startup**: restores scheduled reminders after a restart.
- **Vibration**: focus and reminder alerts.
- **Internet**: used only by the optional cloud assistant described above.
- **Text-to-speech**: flashcards can be read aloud by the speech engine already installed on your device.

## Deleting your data
Settings → data management lets you erase all data. Uninstalling the app removes its database and keys.

## Children
The app is a general productivity tool and is not directed at children.

## Changes
Changes to this policy will be published with the app update that introduces them.
