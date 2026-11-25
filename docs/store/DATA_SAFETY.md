# Google Play Data safety — answers derived from the code

| Question | Answer | Evidence |
|---|---|---|
| Does the app collect or share user data? | **Yes, through the Google Mobile Ads SDK (AdMob banner).** Declare per Google's AdMob Data safety guidance: **Device or other IDs** (advertising ID), **Approximate location** (from IP), **App interactions** and **Diagnostics**, collected and shared for *Advertising or marketing*, *Analytics* and *Fraud prevention, security and compliance*; processed ephemerally is *No*; encrypted in transit *Yes*. The developer collects nothing else. | `google_mobile_ads` in `pubspec.yaml`, `lib/core/ads/bottom_banner_ad_widget.dart`, AdMob `APPLICATION_ID` in `AndroidManifest.xml`. Other network client: the optional assistant (`lib/features/assistant/data/remote_assistant.dart`). |
| Ads consent | Google UMP consent form shown where required (EEA/UK/CH) before any ad request; no ad is requested without consent. | `ConsentInformation` / `ConsentForm` in `bottom_banner_ad_widget.dart`. |
| Contains ads? | **Yes** (Play Console > App content > Ads). | Banner under the navigation bar (`app_shell.dart`). |
| Optional assistant | When the user enables it and configures their own endpoint, the selected note text is sent, after explicit consent, to **that user-chosen provider**. Play treats user-initiated transfer to a service the user configures; declare per current Play guidance at submission. | Consent gate `AssistantConsentDeclined`, HTTPS-only endpoint parser. |
| Is data encrypted in transit? | Yes (HTTPS only for the assistant). | `RemoteAssistant` rejects non-`https` endpoints. |
| Can users request deletion? | Yes, in-app erase of all data; uninstall removes everything. | `wipeAllUserData()` in the database layer. |
| Data stored on device | Encrypted database (sqlite3mc), key in Android Keystore-backed secure storage. | `lib/core/database/`, `lib/core/security/secret_store.dart`. |
| Microphone / audio | Flashcard voice recordings, made only when the user taps Record. Stored on the device (encrypted database) and in user-made backups; never transmitted, so not "collected" in Play's sense. | `RECORD_AUDIO` asked at use time in `MainActivity.recordStart`; bytes saved via `FlashcardsRepository.addMedia`. |
| Do Not Disturb | Optional switch that sets priority-only mode during focus sessions and restores the previous mode afterwards. No data leaves the device. | `ACCESS_NOTIFICATION_POLICY` (granted by the user in system settings), `DndBridge.kt`. |
| Backups | User-exported, password-encrypted files (Argon2id + AES-256-GCM); Android auto-backup disabled. | `lib/core/backup/backup_service.dart`, `AndroidManifest.xml` `allowBackup=false`. |

Re-check every answer against the current Play Console form and policy at submission time.
