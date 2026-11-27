# Architecture Review & Continuous Improvement Plan

**App:** Future 2035 — White Luxury Productivity OS (Flutter, local-first)
**Stack:** Riverpod (DI + state), go_router, Drift (encrypted SQLite), flutter_secure_storage, Play Integrity, extensive CI

## Current Strengths
- Feature-first modularization: `lib/features/<feature>/{domain,data,application,presentation}`
- Clean layered architecture with pure domain, data repositories, application (Riverpod providers), presentation
- Riverpod as lightweight, testable DI (overrides in bootstrap/tests) — superior to heavier frameworks for Flutter
- Strong security: secrets never in APK/DB/logs/backups; encrypted DB key in Android Keystore via secure storage; Play Integrity; R8 minify/shrink; signature verification in release CI
- Excellent CI/CD: analyze, tests, signed APK/AAB, certificate fingerprint check, Dependabot, goldens, emulator
- Local-first: data stays on device; internet only for opt-in features + ads
- File size limits, l10n checks, migration safety, control inventory tests

## Modularization & Clean Architecture Recommendations
Continue and deepen the existing pattern. Optional next steps:

1. **Extract shared core** into a local package (`packages/core`) if the monorepo grows (domain entities, design tokens, security abstractions).
2. **Strict unidirectional data flow**: UI emits events → ViewModel/Notifier → Repository → state Flow back.
3. **Domain independence**: domain layer must not import Flutter or data packages.

### Concrete Refactoring Example (Riverpod + Repository)

**Before** (tight coupling possible):
```dart
// In a screen
final db = ref.watch(databaseProvider);
final notes = await db.select(db.notes).get();
```

**After** (Clean + testable):
```dart
// domain/entities/note.dart
class Note { ... }

// domain/repositories/notes_repository.dart
abstract class NotesRepository {
  Stream<List<Note>> watchNotes();
  Future<void> save(Note note);
}

// data/notes_repository_impl.dart
class NotesRepositoryImpl implements NotesRepository {
  NotesRepositoryImpl(this._db);
  final AppDatabase _db;
  // implement with Drift queries, map to domain entities
}

// application/notes_providers.dart
final notesRepositoryProvider = Provider<NotesRepository>((ref) {
  return NotesRepositoryImpl(ref.watch(databaseProvider));
});

final notesStreamProvider = StreamProvider<List<Note>>((ref) {
  return ref.watch(notesRepositoryProvider).watchNotes();
});

// presentation: watch notesStreamProvider, never touch DB directly
```

This keeps domain pure, data swappable (in-memory for tests), and screens simple.

## Dependency Injection
Riverpod is already the DI container. Best practices in use:
- Constructor injection via Provider
- Overrides for tests and bootstrap
- No service locator anti-pattern

Enhance by preferring `Provider` / `Notifier` over global singletons.

## Testing Strategy
- **Unit**: domain logic, repositories (use MemorySecretStore, in-memory Drift)
- **Widget**: screens with TestEnv, pumpScreen helpers
- **Integration**: full flows on emulator (already in CI)
- **Performance**: Macrobenchmark for startup/scrolling + Baseline Profiles
- Prefer fakes over mocks; keep TestEnv consistent

## CI/CD for Google Play
Current `android-release.yml` is excellent (secrets check, signing verification, AAB/APK, fingerprint).

Improvements:
- Add Play Console API upload step (once service account is ready)
- Generate and include Baseline Profiles in the AAB
- Add R8 mapping file upload for crash deobfuscation
- Track size and startup metrics

## Performance Optimizations
- **Implemented this run**: Added `androidx.profileinstaller:profileinstaller` so Baseline Profiles can be applied on install (faster cold start, better scrolling).
- Next: Generate real Baseline Profiles with Macrobenchmark (common user journeys: open app → home → create note → focus mode).
- Use `compute` / isolates for heavy recurrence, backup, or large list processing.
- Keep images/sounds compressed; lazy-load features.
- Monitor with Flutter DevTools and Android Studio Profiler.

## Security (maintain / enhance)
- Already strong against tampering and data leaks.
- Never log user content (ErrorLog already filters).
- Continue Play Integrity checks for sensitive actions.
- Keep R8 rules minimal but complete (current proguard-rules.pro is good).
- Consider certificate pinning only if adding authenticated backends later (local-first reduces need).
- Regular dependency updates (Dependabot is active).

## Prioritized Action Plan for Continuous Improvement
1. **High – Speed**: Generate Baseline Profiles and include in release AAB (next run).
2. **High – Quality**: Expand unit tests for all repositories and domain use-cases; add mutation testing or coverage gates if desired.
3. **Medium – Ease of development**: Create feature scaffolding script (`tool/new_feature.py`) that generates domain/data/application/presentation skeleton + test stubs.
4. **Medium – Modularization**: Document and enforce layer boundaries with a custom analyzer or simple import checks.
5. **Medium – CI/CD**: Automate Play Store upload + staged rollout from the release workflow.
6. **Low – Performance**: Profile and optimize the heaviest screens (notes list, calendar, charts).
7. **Ongoing**: Keep file size ≤ 400 lines, l10n completeness, and security reviews on every PR.

## Development Experience Goals
- Fast: hot reload + Riverpod + existing helpers
- Wonderful: clear layers, tokens in design_system, calm white-luxury UI
- Very easy: follow AGENTS.md, run `bash tool/check_all.sh`, copy an existing feature folder

All changes must preserve the security invariants (no secrets in code, encrypted local data, verified signatures).
