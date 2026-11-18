# FLASHCARDS PRO SYSTEM — MASTER DIRECTIVE FOR HERMES

## 0. Mandatory Pre-Work Rules
- Inspect all existing files under `lib/features/flashcards/`, `lib/l10n/`, `CONTROL_INVENTORY.md`, and `test/` BEFORE editing. Never rewrite working code from scratch; upgrade and extend cleanly.
- Use Western digits (`0123456789`) only across all UI counters, intervals, stats, and dates. Zero Hebrew (`he`/`iw`).
- Update `CONTROL_INVENTORY.md` and `control_inventory_test.dart` for every new button/control added, and ensure `flutter analyze` + `flutter test` pass cleanly.

## 1. Card Creation & Management
- Unlimited content types per card; full Create/Edit/Delete/Duplicate-and-Edit.
- Strict separation between Source Text and Multiple Translations.
- Support Examples, Personal Notes, Tags, Images, Audio files, Multi-sided cards (2+ faces), and Multiple Languages inside a single card.
- Bulk Editing across selected cards (tags, deck move, suspend/favorite, field edits).
- Real-time Duplicate Detection & Similarity Warning on create/import.

## 2. Custom Card Design, Fields & Templates (Zero Data Loss)
- Add, remove, rename, reorder, and show/hide fields dynamically.
- Customize front, back, and multi-face layouts + per-field language assignment.
- Custom Q&A display modes + Progressive Answer Reveal (step-by-step fields).
- Reusable Card Templates for different card types.
- **Critical Guarantee:** Modifying fields or switching templates MUST preserve all existing user card data (non-destructive schema migration).

## 3. Spaced Repetition Engine (FSRS-4.5)
- Implement exact FSRS-4.5 scheduling (Difficulty `D`, Stability `S`, Retrievability `R`, optimal intervals).
- 4-level grading: `Again`, `Hard`, `Good`, `Easy` — displaying the predicted next interval on each button.
- Every review updates next due date, difficulty, memory stability, forgetting probability, interval, and appends to the card's persistent Review Log.

## 4. Native Device TTS Voice Engine
- Integrate device native TTS supporting all installed languages and voices.
- Select preferred voice per language AND per individual field.
- Manual play + toggleable Auto-Play on card reveal.
- Speech rate slider (`0.5` to `2.0`) and repeat count (`1` to `9` times).
- Independent playback buttons for Source, Translation, and Examples.
- Graceful fallback when a voice/language is missing + built-in TTS Voice & Engine Tester screen.

## 5. Decks & Organization
- Multi-deck support; organize by Topic, Language, Level, Categories, and Tags.
- Favorites list, Difficult/Leech cards list, Custom Review Decks, and seamless Move Cards between decks.
- Global advanced search across all decks.

## 6. Search & Indexing Engine
- Search across: Source text, Translations, Examples, Notes, Tags, Language, Deck, Difficulty, and Favorites.
- **Arabic Normalization:** Strip Arabic diacritics/tashkeel (`َ ً ُ ٌ ِ ٍ ْ ّ`) and normalize alef/taa marbuta during search indexing.
- Similarity & duplicate detection across cards.

## 7. Import & Export
- Import `CSV`, `TSV`, and `JSON` with: live data preview, column-to-field mapping UI, duplicate detection, incomplete-row handling, strict UTF-8/Unicode validation preserving Arabic & all scripts.
- Export to `CSV` (and full `JSON` backup) preserving card structure and custom fields.

## 8. Statistics & Progress
- Accurate metrics: Total cards, Mastered/Known, Due for review, Difficult/Leech, New cards, Daily review count, Accuracy rate, Forgetting rate, Retention trend, and full Review History.
- Independent breakdowns per Deck AND per Language.

## 9. Smart Review Engine & 10. Full User Controls
- Due-first priority queue, daily new/review caps (anti-overwhelm), past-performance weighting, in-session re-queuing of failed (`Again`) cards, and spaced interval distribution.
- Custom session modes: Hard-only, New-only, Specific Deck, Language filter, and Review History viewer.
- User controls for: session card limit, card order, decks, languages, audio, speed, repeat count, reveal mode, templates, active fields, and training difficulty.

## 11. Smart Extra Features to Include
- Cloze Deletion (`{{c1::...}}`) & Image Occlusion support.
- Typed-Answer / Dictation mode with diff highlighting + Hands-free Audio-only review mode.
- Leech detection/auto-suspend + Undo last review action + intuitive swipe gestures.

## 12. Smart UX & Button Distribution (Power + Simplicity)
- Use Progressive Disclosure: show only 3–4 primary actions per screen; group advanced tools cleanly into contextual Bottom Sheets (`More Tools`) so screens stay uncluttered and effortless to edit.
