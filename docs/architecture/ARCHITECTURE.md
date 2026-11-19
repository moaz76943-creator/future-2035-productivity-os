# Architecture Guide — Future 2035 Productivity OS

## Current State (strong foundation)

- **Feature-first modular layout**: `lib/features/<feature>/{application,data,presentation[,domain]}`
- **Riverpod** for state management *and* dependency injection (providers + overrides in bootstrap)
- **Drift** (SQLite) as the local source of truth, fully encrypted
- **Clean layering** already emerging: domain logic isolated where it matters (assistant, focus, etc.)
- Security invariants are excellent and must be preserved:
  - Database key lives only in `flutter_secure_storage` (Android Keystore)
  - `obtainDatabaseKey` never silently rotates a key when the DB already exists
  - No user content in release logs / `FlutterError`
  - Encrypted backups, Play Integrity hooks, network security config

## Target Architecture (MVVM + Clean)

```
Presentation (Widgets + Notifiers)
        ↓
Application (Use-cases / Controllers / Providers)
        ↓
Domain (Entities, Repository interfaces, pure logic)
        ↓
Data (Drift repositories, remote adapters, secure storage)
```

- Presentation never imports Drift or raw SQL
- Domain never imports Flutter or Riverpod
- All cross-feature communication goes through providers or domain events
- Riverpod remains the composition root (bootstrap overrides)

## Dependency Injection

Riverpod *is* the DI container. Prefer:

```dart
// Prefer generated providers (next major step)
@riverpod
TasksRepository tasksRepository(TasksRepositoryRef ref) =>
    DriftTasksRepository(ref.watch(databaseProvider));
```

Overrides stay in `bootstrap.dart` and tests. Never new up repositories inside widgets.

## Testing Strategy

| Layer          | What to test                          | How                              |
|----------------|---------------------------------------|----------------------------------|
| Domain         | Pure logic, rules, recurrence         | Unit tests (no Flutter)          |
| Data           | Repositories, migrations, encryption  | Unit tests with in-memory Drift  |
| Application    | Notifiers / controllers               | `ProviderContainer` + overrides  |
| Presentation   | Screens, RTL, a11y, reduced motion    | Widget tests (`pumpScreen`)      |
| Integration    | Backup/restore, notification plans    | Integration tests (add more)     |

Always override `databaseProvider` and `clockProvider` in tests.

## CI/CD for Google Play

Current workflows already produce signed AAB + signature verification. Next steps:

1. Add `dart format --output=none --set-exit-if-changed .` gate
2. Coverage upload + threshold
3. Automated Play upload (staged rollout) via service account once secrets are ready
4. `--obfuscate --split-debug-info` on release builds (already recommended)

## Performance Guidelines

- Keep `build()` methods cheap; extract widgets
- Heavy computation → `Isolate.run` / `compute`
- Prefer `StreamProvider.autoDispose.family` for screen-scoped queries
- Profile with Flutter DevTools before optimizing
- Ship AAB, enable R8 full mode, tree-shake icons

## Security Non-Negotiables

- Never log or transmit the database key or user content
- Never rotate an existing encrypted DB key
- All secrets stay in `SecretStore`
- Release builds must be obfuscated and signed with the upload key
- Continue Play Integrity checks for sensitive operations

## Prioritized Roadmap

See the top-level review for the full prioritized action plan. The first concrete step (this commit) is stricter analysis rules + this living document so every future change stays aligned.

---
*Living document — update when architecture decisions change.*
