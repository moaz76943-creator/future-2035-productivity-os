# Google Play Data safety — answers derived from the code

| Question | Answer | Evidence |
|---|---|---|
| Does the app collect or share user data? | **No** data is collected by the developer or shared with third parties by the app. | No analytics/ads/crash SDKs (`pubspec.yaml`); the only network client is the optional assistant (`lib/features/assistant/data/remote_assistant.dart`). |
| Optional assistant | When the user enables it and configures their own endpoint, the selected note text is sent, after explicit consent, to **that user-chosen provider**. Play treats user-initiated transfer to a service the user configures; declare per current Play guidance at submission. | Consent gate `AssistantConsentDeclined`, HTTPS-only endpoint parser. |
| Is data encrypted in transit? | Yes (HTTPS only for the assistant). | `RemoteAssistant` rejects non-`https` endpoints. |
| Can users request deletion? | Yes, in-app erase of all data; uninstall removes everything. | `wipeAllUserData()` in the database layer. |
| Data stored on device | Encrypted database (sqlite3mc), key in Android Keystore-backed secure storage. | `lib/core/database/`, `lib/core/security/secret_store.dart`. |
| Backups | User-exported, password-encrypted files (Argon2id + AES-256-GCM); Android auto-backup disabled. | `lib/core/backup/backup_service.dart`, `AndroidManifest.xml` `allowBackup=false`. |

Re-check every answer against the current Play Console form and policy at submission time.
