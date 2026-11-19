# Architecture decision records — Deep Focus

Short records of decisions that shape the code. Each says what was decided, why, and what it
costs. Newest last. Status: Accepted unless noted.

## ADR-001 Offline first, encrypted local database
Every core feature works without a connection. All data lives in one SQLite database on the device, opened through Drift with SQLite3 Multiple
Ciphers; the key is generated on first run and kept in the platform keystore (`SecretStore`).
No account, sync or analytics. **Why:** privacy and a study app that works anywhere.
Internet use is allowed (owner decision, 2026-11-19), but only for optional features, never for
the core features. Today two features use it, and neither runs unless the user acts:
the cloud assistant, which runs only when the user enters their own HTTPS endpoint and agrees
before any note text is sent (`features/assistant/data/remote_assistant.dart`), and Play Integrity
(ADR-009). The built-in assistant runs fully offline.
**Cost:** no cross-device sync; backup is a user-held encrypted file (ADR-007).

## ADR-002 Riverpod 3 + GoRouter, feature folders
State through Riverpod providers (`application/`), navigation only through `Routes` paths.
Each feature has `data/` (repositories), `domain/` (pure logic), `application/`,
`presentation/`. **Why:** testable layers, fakes via provider overrides, no global singletons
in UI code.

## ADR-003 Decoupled Material (`material_ui`)
Widgets import `package:material_ui/material_ui.dart`, not `flutter/material.dart` (Flutter 3.50).
One design system (`core/design_system`) owns colours, spacing and components.

## ADR-004 File size cap via `part` files and extensions
Source files stay under about 400 lines. Large screens and repositories stay one library and are
split into `part` files in a folder named after the library. Methods move into extensions on the
class (`extension _ReviewActions on _ReviewScreenState`). Extensions call a one-line
`_update(fn) => setState(fn)` helper instead of `setState` (which is protected); notifiers expose
private read accessors for the same reason. **Why:** smaller files without changing behaviour or
public APIs, and generated Drift code stays byte-identical. **Cost:** extension methods are not
virtual, so these classes must not be subclassed for mocking (tests use real in-memory databases).

## ADR-005 FSRS-4.5 instead of SM-2 (schema v6)
Cards store stability, difficulty and recall data; learning steps 1 and 10 minutes, relearning
10 minutes, target retention 0.9, default FSRS-4.5 weights. The v6 migration converts SM-2 ease
and interval into FSRS state, so no review history is lost. **Why:** better intervals and a recall
estimate per card.

## ADR-006 Card media as encrypted BLOBs (schema v7)
Images (up to 4 MB) and recordings (up to 8 MB) are stored in the `card_media` table, so they are
encrypted with the database and included in backups. Playback writes a temporary file in the app
cache only. **Cost:** a larger database file; limits keep it bounded.

## ADR-007 Backup: Argon2id + AES-GCM, key derivation off the UI thread
Backups are one file encrypted with a password-derived key; Argon2id runs in `Isolate.run` so the
UI does not freeze. Blobs travel base64-encoded inside the JSON payload.

## ADR-008 Languages and digits
Eight locales (ar, en, es, fr, hi, pt, ru, zh) with RTL for Arabic. All numbers, dates and timers
use Western digits 0-9 through `AppFormat`. Hebrew (he/iw) is not offered.
`tool/check_l10n.py` fails the build on a missing key, a non-Western digit or a Hebrew locale.

## ADR-009 Play Integrity (kept)
**Status:** Accepted (owner, 2026-11-19: the app may use the internet). The owner added
`com.google.android.play:integrity` and `PlayIntegrityService`. It needs Google Play services and
a network connection. A token only means something when a server verifies it, so until a backend
exists it is not used to block anything; every feature works without it.

## ADR-010 Calm design: White Luxury light and true AMOLED dark
Light: white surfaces with module accents. Dark: page background `#000000` (pixels off on OLED)
with near-black raised surfaces (`#0B0B11`, `#15151E`) and a faint aurora glow. Each screen keeps
3–4 primary actions; the rest live in categorized bottom menus.

## ADR-011 Zero dead controls; errors shown where the user is
`test/widget/inventory` taps every control on every screen and fails if one does nothing.
Errors raised from a sheet or dialog are shown inside it (inline), not in a snackbar hidden
under the modal barrier. Inventory: `docs/qa/CONTROL_INVENTORY.md`.

## ADR-012 Signing
QA builds (pre-releases `qa-<sha>`) are profile builds signed with a CI-cached debug key. Release
signing uses only GitHub secrets (`FUTURE_UPLOAD_*`); keys and passwords are never committed and
never regenerated silently.

## ADR-013 Permissive licenses only
Dependencies and assets must be MIT, BSD, Apache-2.0, ISC, Zlib, CC0/public domain or SIL OFL.
No GPL, LGPL or AGPL. `tool/third_party_licenses.py --check` enforces this in CI. The only MPL-2.0
package (`dbus`) is used by Linux desktop plugins and is not in the Android app. The only
proprietary piece is Play Integrity (ADR-009).

## ADR-014 Working branch `claude-dev`
The assistant's work goes to the `claude-dev` branch (owner, 2026-11-19; plain `claude` is blocked by the existing `claude/future2035-wip` branch). CI builds it and publishes a
QA pre-release APK (`qa-<sha>`) for each push, the same as for `main`. The owner decides when
`claude-dev` is merged into `main`.

## ADR-015 Nature sounds: CC0 recordings that never audibly loop
**Superseded design:** sounds synthesised in code were tried first; on the owner's phone they
sounded like static, so real recordings replaced them. Rain, thunderstorm, stream, ocean, fire,
forest birds, summer night and rain in the forest are CC0 field recordings (sources in
THIRD_PARTY_LICENSES.md; free for commercial use, no credit needed; CC-BY and GPL-hosted files were
deliberately left out). 3.8 MB as mono Vorbis. **No loop:** `SampleVoice` gives each ear its own
read head; every 9-20 s a head jumps to a random place with a 2.5 s equal-power cross-fade and the
level drifts slightly, so a one-minute file plays as an endless, never-repeating sequence.
Decoded PCM is cached with soft references (freed under memory pressure). White/pink/brown noise
is still generated. No music (owner's rule). Playback: media foreground service with a
notification; audio focus and unplugged headphones pause; sleep timer fades out.

## ADR-016 Timer-end sounds: small files, one notification channel each
Five short sounds are rendered by `tool/sounds/render_alarm_sounds.py` into `res/raw/alarm_*.ogg`
(75 KB): generated beeps and a wood knock, and excerpts of the CC0 bird and stream recordings. No
music, no bells. Android fixes a channel's sound when it is created, so each sound has its
own focus channel; the phone's own sound stays available.

## ADR-017 Speech uses the phone's engine, any language
`speech/TtsBridge.kt` wraps Android TextToSpeech: voice per language, rate, repeats with a pause,
and an "await" mode that answers when speaking ends (needed for the hands-free listen mode). Decks
can use any of about 120 languages; those with voice data on the phone are listed first, and the
picker opens the phone's speech settings to download others. No cloud voices are required.


## ADR-018 Help, FAQ and tour come from one feature guide
`lib/features/help/domain/feature_guide.dart` lists every feature once: the screen it is about,
the question and answer, and (for three entries) the first-run tour page. The Help screen and the
tour read only this list. `test/unit/help/feature_guide_test.dart` walks the router: a new screen
without a guide entry, or an entry pointing at a removed screen, fails the build, so the help
cannot silently fall behind the app. When a feature changes, update its answer in the ARB files.

## ADR-019 Prayer times are computed on the phone
`lib/features/prayer/domain/prayer_calc.dart` uses the standard sun-position formulas (as in
common prayer-time tables) with the usual methods (Umm al-Qura, Jordan, Egypt, MWL, ISNA, …).
The user picks a city from a bundled list (no location permission). Reminders go through the
normal notification planner and ignore quiet hours; a running focus session pauses at prayer
time while the app is open. Tests compare against published Makkah times (within 2 minutes).

## ADR-020 Phone integrations stay behind small bridges with in-memory twins
App icon shortcuts (`ShortcutsBridge.kt`), Do Not Disturb (`DndBridge.kt`, restored by an alarm
if the app sleeps, never touching a mode the user changed), the home screen widget
(`HomeWidget.kt`, live countdown via Chronometer) and voice typing (the phone's speech screen, so
the app needs no microphone permission for it) each have a Dart interface with a memory version
used in tests. Notification taps and shortcuts open their screen through `app/routing/deep_links.dart`,
which follows only in-app paths.

## ADR-021 Card files: Anki and Excel without new dependencies
`core/files/zip_reader.dart` reads ZIP entries with the platform's raw deflate. `.xlsx` sheets are
read from their XML; Anki `.apkg` notes from the bundled SQLite (`collection.anki21` or `.anki2`;
the newest `.anki21b` format asks the user to export with "Support older Anki versions"). Both
become rows for the existing preview and column mapping.

## ADR-022 One schema per section for files in and out
`lib/core/transfer/` writes Excel (.xlsx) and Word (.docx) from scratch (Office Open XML, right-to-left
aware), CSV with a BOM, Markdown and text; PDF pages are laid out by Android (`PdfExport.kt`) so
Arabic is shaped correctly. Each section declares one `TransferSchema` (tasks, notes, cards) that
both export and import read; headers are recognised in all 8 languages and columns can come in any
order. `test/unit/transfer/transfer_roundtrip_test.dart` exports, imports into an empty app and
exports again: any field that only goes one way fails the build. PDF files cannot be imported
(their text has no reliable structure); the app says so.

## ADR-023 Pictures in notes live in the database
A note refers to a picture with a line `![](img:<id>)`; the bytes are in `note_images` (schema v8),
so encrypted backups include them with no extra step. Pictures are made upright, at most 1600 px
and JPEG on the phone (`ImageShrink.kt`). Pictures removed from the text are deleted when the note
closes, not while editing, so undo can still bring them back.

## ADR-024 Rules for every contributor, human or AI
`AGENTS.md` (pointed to by `CLAUDE.md`, `GEMINI.md`, `.github/copilot-instructions.md`) lists the
rules and `tool/check_all.sh` runs every check CI runs. Texts are added only with
`tool/l10n_add_keys.py`, which refuses a key missing any language.
