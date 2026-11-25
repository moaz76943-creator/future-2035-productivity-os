# UI conventions

These rules apply to every screen. They exist so that 20 languages, RTL,
accessibility and the design language stay consistent.

## Imports
- Widgets: `package:material_ui/material_ui.dart` (Flutter 3.50 decoupled
  Material). Never import `package:flutter/material.dart`.
- State: `flutter_riverpod` (`ConsumerWidget`, `ConsumerStatefulWidget`).
  Repositories are exposed by `lib/features/<f>/application/<f>_providers.dart`.
  Never create a stream inside `build`; wrap it in a provider
  (`StreamProvider.autoDispose.family`) and render it with
  `AsyncValueView` (`lib/shared/widgets/async_value_view.dart`).
- Navigation: `go_router`, paths only via `Routes` (`lib/app/routing/routes.dart`):
  `context.push(Routes.note(id))`.

## Text
- No user-visible string literals. Use `context.l10n.<key>`.
- New strings go into `tool/strings/<feature>.json`
  (`{"key": {"text": "...", "desc": "context for translators", "placeholders": {"count": "int"}}}`),
  then run `python3 tool/en_strings.py && flutter gen-l10n`.
  Prefix keys with the feature name. Use ICU plurals for counts.
- Dates, times, durations, percentages and numbers only via `context.fmt`
  (`AppFormat`), which guarantees Western digits 0-9 in all locales.
  Timer readouts: `AppFormat.clock(duration)` wrapped in
  `Directionality(textDirection: TextDirection.ltr)`.
- Do not concatenate translated fragments into sentences; add a key with placeholders.
- Allow wrapping: never fixed-height text containers; use `maxLines` + ellipsis
  only for list titles. Russian, French and Hindi are ~30% longer than English.

## Layout and RTL
- Use directional APIs only: `EdgeInsetsDirectional`, `AlignmentDirectional`,
  `PositionedDirectional`, `start`/`end`. Never `left`/`right` for layout.
- Icons that imply direction (arrows, chevrons) must use the `_rounded`
  variants that auto-mirror, or check `Directionality.of(context)`.
- Minimum touch target `kMinTouchTarget` (48).

## Design language
- White dominant surfaces; module accents from `ModuleHue` (`hue.a`, `hue.b`).
- Page frame: `ModuleScaffold(title, hue, slivers)`.
- Surfaces: `LuxCard` (default), `AuroraCard` (one hero per screen at most),
  `GlassPanel` only for floating chrome. Do not stack glass.
- Indicators: `GlowRing`, `GlowBar`, `LuxPill`, `GlowDot`, `StatTile`.
- Charts: `GlowBarChart`, `GlowAreaChart`, `ConsistencyHeatmap`.
- States: `EmptyState`, `ErrorState`, `LoadingState`, `SectionHeader`.
- Vary layouts: mix list rows, rings, chips and full-bleed sections instead of
  repeating identical rectangular cards.
- Motion: check `context.reduceMotion`; when true, use `Duration.zero` and no
  looping animation.
- Colors via `context.lux` (light/dark aware) and `Theme.of(context).colorScheme`.

## Accessibility
- Every icon-only button has a `tooltip` (localized).
- Custom controls get `Semantics(label:, button:, selected:, value:)`.
- Charts provide `semanticsLabel` summarizing the data.

## Data honesty
- Every number shown comes from stored data. Never placeholder or sample
  values. Estimated values are labeled as estimates.

## Tests
- Widget tests: `test/widget/<feature>/...` using `pumpScreen` and `settle`
  from `test/widget/widget_helpers.dart` (in-memory DB, fixed clock
  2026-11-16 10:00, reduced motion). Test at least English and Arabic (RTL).
