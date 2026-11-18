# FUTURE 2035 — Phase 0 Read-Only Repository Audit

Date: 2026-11-18
Branch: `main` (HEAD `83faf99`, clean working tree)

## 1. Repository & Branches
- `main` (active, synced with `origin/main`)
- `origin/ci/safe-android-apk-build`
- `origin/claude/future2035-wip`
- `origin/repair/ci-analyzer-and-apk-build-20261117`

Recent commits:
- `83faf99` chore: use gemini-4-hydrogen, gemini-3.8-flash, and gemini-3.6-flash
- `f60f375` chore: install FUTURE 2035 9-key sequential cloud relay, Phase 0 audit gate, and Visual/Functional Regression Gate
- `8fdf838` Feature screens: tasks, projects, dashboard, spaces, flashcards, settings, onboarding, trash, backup UI

## 2. Toolchain & Android Build Matrix
- **Flutter SDK:** `3.50.0` (channel `stable`, `/opt/hostedtoolcache/flutter/stable-3.50.0-x64/flutter`)
- **Dart SDK:** `3.14.0` (stable, `pubspec.yaml` constraint `^3.14.0`)
- **Java:** OpenJDK `17.0.21` (Temurin)
- **AGP:** `9.3.1` (`android/settings.gradle.kts`)
- **Kotlin Gradle Plugin:** `2.4.20` (`android/settings.gradle.kts`)
- **Gradle Wrapper:** `9.5.0-all.zip` (`android/gradle/wrapper/gradle-wrapper.properties`)
- **Android App Config (`android/app/build.gradle.kts`):**
  - `namespace = "app.future2035.future_os"`
  - `compileSdk = maxOf(37, flutter.compileSdkVersion)`
  - `ndkVersion = flutter.ndkVersion` (unpinned)
  - `isCoreLibraryDesugaringEnabled = true` (`com.android.tools:desugar_jdk_libs:2.1.4`)
  - `JavaVersion.VERSION_17`, `JvmTarget.JVM_17`
  - `release` buildType currently uses `debug` signingConfig (`TODO` for release keystore)
- **Pre-installed Android SDK components on runner:**
  - Build-tools: `34.0.0`, `35.0.0`, `35.0.1`, `36.0.0`, `36.1.0`, `37.0.0`
  - Platforms: `android-34` through `android-37.2-beta3`
  - NDKs: `27.3.13750724`, `29.0.14206865`, `30.0.16248370`
  - CMake: `3.31.5`, `4.1.2`
- **APK Build Blocker (`flutter build apk --debug`):**
  - Failed with exit code 1 (`No space left on device` during `CMake 3.22.1` install).
  - Root cause: `flutter.ndkVersion` requested NDK `28.2.13676358` (2.2 GB download) and `:jni:configureCMakeDebug[arm64-v8a]` (from `sqlite3` / `sqlite3mc` native hooks) requested CMake `3.22.1`, exhausting the ~3.0 GB free disk space on `/dev/root` (72 GB total).

## 3. Core Dependencies (`pubspec.yaml`)
- State: `flutter_riverpod: ^3.5.0`
- Routing: `go_router: ^18.1.4`
- Database: `drift: ^2.35.4`, `drift_flutter: ^0.3.1`, `sqlite3: ^3.9.1` (`hooks.user_defines.sqlite3.source: sqlite3mc`), `drift_dev: ^2.35.3`, `build_runner: ^2.17.1`
- Security & Backup: `flutter_secure_storage: ^11.2.0`, `cryptography: ^2.9.0`, `share_plus: ^13.3.1`, `file_picker: ^13.4.0`
- Notifications & Time: `flutter_local_notifications: ^23.0.2`, `timezone: ^0.11.2`, `flutter_timezone: ^5.1.1`, `intl: ^0.20.3`
- UI Libraries: `material_ui: ^1.1.0`, `cupertino_ui: ^1.1.7`

## 4. Data Layer (Drift / SQLite)
- `AppDatabase` (`lib/core/database/app_database.dart`, `schemaVersion = 1`) defines 22 tables and 15 indexes.
- Encrypted at rest via `sqlite3mc` and `PlatformSecretStore` (`flutter_secure_storage`).
- Registers custom SQL normalizer function `fos_normalize`.
- Soft deletion (`deletedAt`) for recoverable Trash; `wipeAllUserData()` for full erase and backup restore (`BackupService`).

## 5. Architecture, Routing & UI
- **Design System (`lib/core/design_system/`):**
  - White Luxury tokens (`Palette.porcelain`, `Palette.white`, `LuxColors.light` & `LuxColors.dark`, `ModuleHue` aurora gradients, `Space`, `Radii`, `Motion`).
  - Fonts: `Manrope` (Latin), `ReadexPro` (Arabic), `NotoSansDevanagari` (Hindi), platform CJK fallback (`zh-CN`).
- **Routing (`lib/app/routing/app_router.dart`):**
  - `StatefulShellRoute.indexedStack` with 5 bottom nav tabs (`Home /`, `Tasks /tasks`, `Focus /focus`, `Calendar /calendar`, `Spaces /spaces`).
  - 16 pushed routes covering Tasks, Events, Projects, Notes, Flashcards (Decks + Review), Goals, Habits, Analytics (`/insights`), Search, Assistant, Settings, Trash, and Onboarding.
- **Localization (`lib/app/localization/` & `lib/l10n/`):**
  - 8 languages: `ar`, `en`, `zh-CN`, `es`, `ru`, `fr`, `pt-BR`, `hi-IN`.
  - `AppFormat` passes formatted numbers/dates/durations through `TextNormalizer.westernDigits(...)` to enforce `0123456789`.
  - **Gap:** `python3 tool/check_l10n.py` reports **1,969 missing translation keys** across non-English ARB files, and `flutter gen-l10n` emits an ICU plural override warning in `app_ru.arb:insightOverdue`.
- **Feature Gap:** No native Android TTS fallback (`TextToSpeech` / `MethodChannel` absent in `lib/` and `MainActivity.kt`).

## 6. Verification & CI Audit
- `flutter analyze`: **PASS** (`No issues found!`).
- `flutter test`: **FAIL / HANG** — Unit tests and early widget tests pass (158 passing before hang), then `test/widget/habits/habits_screen_test.dart` hangs on `check-in increments are persisted and streak updates (ar)` until timeout (`Bad state: Cannot close sink while adding stream`).
- `test/widget/smoke_test.dart`: **PASS** (8/8 locales render with correct RTL/LTR).
- **Missing Tests:** No systematic multi-width responsive test suite covering `320, 360, 375, 390, 412, 430, 600, 768, 840, 1024`.
- **CI (`.github/workflows/visual-functional-regression-gate.yml`):**
  - `flutter analyze || true` is non-blocking.
  - `ls -A test/*.dart` is empty because tests live in `test/unit/**` and `test/widget/**`, causing CI to skip `flutter test` silently.
  - CI does not run `flutter build apk --debug`.
