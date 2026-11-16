# Translator brief — Future OS

Product: a premium, calm, private productivity app (tasks, focus timer, calendar,
notes, flashcards with spaced repetition, goals, habits, insights).
Tone: warm, concise, confident, never pushy or manipulative. Address the user
informally where the language has a natural informal-but-respectful register for
apps (e.g. Spanish "tú", French "vous" is preferred for polish, Portuguese (Brazil)
"você", Russian "вы" lowercase, Hindi "आप", Arabic Modern Standard Arabic
masculine-neutral imperative as common in apps, Chinese 你).

Rules (enforced by `python3 tool/check_l10n.py`):
1. Translate every key in `lib/l10n/app_en.arb` (skip keys starting with "@").
   Output file `lib/l10n/app_<loc>.arb` containing `"@@locale": "<loc>"` and the
   translated key/value pairs only (no "@key" metadata objects).
2. Keep placeholders exactly: `{count}`, `{title}`, etc. Never translate names inside braces.
3. ICU plurals: keep `{count, plural, ...}` structure, always include `other`.
   Use the plural categories of the language:
   ar: zero, one, two, few, many, other (=0/=1 also allowed) · ru: one, few, many, other ·
   fr/es/pt: one, many, other (many optional) · hi: one, other · zh: other only (=0/=1 allowed).
4. Digits: Western digits 0-9 only. Never use Arabic-Indic or Devanagari digits.
5. No flag emoji anywhere.
6. Keep strings short enough for mobile buttons; prefer the shortest natural phrasing
   for keys starting with `action`, `nav`, `tasksView`, `priority`, `review`, `theme`, `range`.
7. `weekdaysShort` must be exactly 7 comma-separated items starting Monday
   (use the conventional 1–2 character weekday abbreviations of the language).
8. `settingsEraseWord` is a single uppercase-or-natural short word the user types to confirm.
9. `appName` stays "Future OS".
10. Product terms: keep consistent with your glossary file.
11. Each `@key` description in the English file explains context — read it.

Also write `docs/localization/glossary/<loc>.md`: a table of ~30 core terms
(Focus, Session, Pomodoro, Task, Project, Due date, Reminder, Repeat, Note, Notebook,
Tag, Deck, Card, Review, Again/Hard/Good/Easy, Goal, Habit, Streak, Insights,
Backup, Restore, Trash, Archive, Pin, Assistant, AI provider, On-device, Time block)
with your chosen translation and a one-line rationale.

Translation status: these are model-generated translations. Do NOT claim human
review. Record status as `machine-translated (model), pending human review`.
