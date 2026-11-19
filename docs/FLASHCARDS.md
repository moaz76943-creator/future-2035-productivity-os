# Flashcards — what is implemented

Status against the owner's flashcards specification (2026-11-19). "Device check" means it is
implemented and covered by automated tests, but sound or files on a real phone still need a look.

| Area | Status |
|---|---|
| Create, edit, delete (with undo), copy, move between decks | Done |
| Several meanings / translations | Done — one per line or `;` in the answer, and custom fields such as "Second translation" with their own language |
| Original text separated from translation | Done — front/back plus optional and custom fields |
| Examples, notes, pronunciation, explanation, tags | Done |
| Images and audio | Done — one image and one recording per side, attached from a file or recorded in the app (microphone, up to 5 minutes), stored encrypted in the database and included in backups (device check) |
| Multi-face cards | Done as step-by-step reveal: back, then each field one tap at a time; custom fields can sit on the front |
| Several languages in one card | Done — speech language per side, per built-in field and per custom field |
| Bulk editing | Done — multi-select: favourite, suspend, tag, move, delete (undo) |
| Duplicate detection | Done — on save (ask) and on import (skip), case/accent/Arabic-diacritic insensitive |
| Custom fields, rename/hide/reorder, templates | Done — per deck; content never changes when the layout or template changes |
| FSRS-4.5 with Again/Hard/Good/Easy | Done — stability, difficulty, recall probability, interval; review log kept |
| TTS: device voices, voice per language, rate 0.5–2, repeat 1–9, auto/manual, field-by-field, fallback, voice test | Done (device check); fallback stays within the same language and never substitutes another language |
| Decks, topics/levels, tags, favourites, hard cards, custom sessions | Done |
| Search across decks (text, translation, examples, notes, tags, language, deck, status, favourites) | Done |
| Import CSV/TSV/JSON with preview, column mapping, duplicates, incomplete rows, Unicode | Done |
| Export CSV (formula-safe, UTF-8 with BOM) and JSON | Done |
| Statistics per deck and per language/level | Done — counts, due, hard, reviews per day, correct rate, forgetting rate, FSRS recall estimate, history |
| Smart review: due first, daily new limit, relearning same session, new/hard/favourites/mistakes only, session size and order | Done |

Known limits: one image and one recording per side;
custom fields per deck up to 12.
