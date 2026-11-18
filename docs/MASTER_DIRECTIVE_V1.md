# FUTURE 2035 — MASTER DIRECTIVE V1.0 (White Luxury Productivity OS)

## Critical Execution Rule (No Rewrite From Scratch)
- **PHASE 0 — DISCOVERY FIRST:** Never start by rewriting the application. Inspect the existing repository, Flutter/Dart SDK, AGP, Gradle Wrapper, Kotlin, Java, dependencies, Drift/SQLite schema, Riverpod providers, GoRouter routes, tests, and UI first.
- Preserve every working module and feature. Repair root causes and build incrementally through Phases 0 to 9.
- Canonical branch: `main`. Zero secrets in git. Zero force push.

## Core Design & Product Standards
- **Design System:** WHITE LUXURY FUTURISTIC UI (white primary default, optional dark theme, unified design tokens, no excessive glow/noise).
- **14 Connected Modules:** Intelligent Dashboard, Focus Studio (persistent timestamp recovery), Tasks, Projects & Milestones, Smart Calendar (timezone/DST safe), Notes Studio, Flashcards (flexible templates + FSRS/spaced repetition + native Android TTS fallback), Goals & Habits, Real Analytics, Unified Search, Notifications, Backup & Recovery, 8+ Languages (Arabic, English, zh-CN, es, ru, fr, pt-BR, hi) with strict Western digits (`0123456789`) and RTL/LTR accuracy, Optional Provider-Independent AI Assistant.
- **Zero Dead Buttons:** 100% of visible interactive controls must have defined, tested behavior and real state/database persistence.
- **Responsiveness:** Must pass at widths `320, 360, 375, 390, 412, 430, 600, 768, 840, 1024` (zero RenderFlex/RenderBox overflow, safe areas respected, keyboard handling, TalkBack semantics).
- **Visual & Functional Regression Gate:** Every change must pass `flutter analyze`, `flutter test`, responsive multi-width layout checks, and primary button/journey verification before release.

## ACTIVE PRIORITY PHASE: FLASHCARDS PRO SYSTEM
Read and execute `docs/FLASHCARDS_MASTER_DIRECTIVE.md` in full, and update `state/future2035_phases.json` (`flashcards_pro_system`) upon completion.
