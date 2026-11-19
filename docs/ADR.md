# Architecture decision records — Deep Focus

Short records of decisions that shape the code. Each says what was decided, why, and what it
costs. Newest last. Status: Accepted unless noted.

## ADR-001 Offline only, encrypted local database
All data lives in one SQLite database on the device, opened through Drift with SQLite3 Multiple
Ciphers; the key is generated on first run and kept in the platform keystore (`SecretStore`).
No account, sync or analytics. **Why:** privacy and a study app that works anywhere.
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

## ADR-009 Play Integrity (owner decision pending)
**Status:** Proposed by the owner, not wired in. The owner added `com.google.android.play:integrity`
and `PlayIntegrityService`. No Dart code calls it, so the app still works fully offline.
Attestation needs Google Play services, a network connection and, to be meaningful, a server
that verifies tokens. That conflicts with ADR-001. Until the owner decides, keep it unused.
Remove the dependency if the app must be 100% offline and open source on the native side.

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
