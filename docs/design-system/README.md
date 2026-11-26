# Deep Focus design system (Future Premium — Calm Light UI)

One place for every shared visual decision; screens only compose. Read this file instead of
re-reading the code or a long spec. Light-first, dark supported, RTL and LTR.

## Where to change what

| Change | Real location |
| --- | --- |
| Main/brand colors, neutrals, swatches | `lib/core/design_system/tokens.dart` → `Palette` |
| Default accent and user-selectable accents | `tokens.dart` → `AppAccents` (`teal` = default, `Palette.lagoon`) |
| Module accent colors (Focus, Tasks, Flashcards…) | `tokens.dart` → `enum ModuleHue` (pairs `a`/`b`) |
| Spacing, screen padding | `tokens.dart` → `Space` (`Space.page` = screen gutter) |
| Radii | `tokens.dart` → `Radii` (`sm 10`, `md 16`, `lg 22`, `xl 28`, `pill`) |
| Motion durations/curves, reduced motion | `tokens.dart` → `Motion`; `components/surfaces.dart` → `MotionScope` |
| Surface, ink, border, shadow, glass colors (light + dark) | `lib/core/design_system/app_theme/lux_colors.dart` → `LuxColors.light/dark` |
| Fonts (Latin, Arabic, other scripts, fallbacks) | `app_theme/lux_colors.dart` → `AppFonts`; per-language list `app_theme/language_fonts.g.dart` (generated) |
| Buttons, inputs, dialogs, sheets, chips, nav bar, FAB themes | `lib/core/design_system/app_theme.dart` → `AppTheme.build` |
| Backgrounds | `components/surfaces.dart` → `AuroraBackground`; nature art `components/landscape.dart` → `LandscapePainter` (moods `day`, `deep`) |
| Cards and panels | `components/surfaces.dart` → `LuxCard` (default), `GlassPanel`, `AuroraCard` (hero only), `IconOrb` |
| Rings, bars, pills, stat tiles | `components/indicators.dart` (`GlowRing`, `GlowBar`, `LuxPill`, `StatTile`) |
| Charts | `components/charts.dart` |
| Empty/error/loading states, section headers | `components/states.dart` |
| Bottom navigation (6 destinations) + banner ad | `lib/app/shell/app_shell.dart` |
| Sheet bottom padding above system/nav bars | `components/surfaces.dart` → `sheetBottomInset(context)` |
| One screen's layout | that screen's folder under `lib/features/<module>/presentation/` |

Use `context.lux` (colors), `context.text` (type), `Space`/`Radii`/`Motion` tokens.
Never hard-code a color, radius, spacing or duration in a screen.

## Layout rules (bottom of the screen)

`AppShell` stacks, bottom-up: system navigation inset (`SafeArea`) → `BottomBannerAdWidget`
(never removed, never covered) → floating `GlassPanel` navigation bar with the six destinations
(Home, Tasks, Focus, Flashcards, Calendar, Spaces). Pages inside the shell get `ShellScope`;
floating buttons use `NavClearFab` so they sit above the bar; sheets add `sheetBottomInset`.

## Screen identities

Home: landscape hero + greeting, stat tiles, focus entry, today, progress. Focus: immersive ring
with the deep landscape inside, mode chips, big controls. Tasks: filters, today/upcoming groups,
priority edge colour. Calendar: month/week/day/schedule, Gregorian + Hijri. Spaces: glass module
grid. Flashcards: decks, review, word packs. Each screen keeps its own composition.

## Localization and responsiveness

71 locales, Arabic/Persian/Urdu RTL. Use `EdgeInsetsDirectional`/`AlignmentDirectional`, never
left/right. Long labels: `FittedBox(fit: BoxFit.scaleDown)` or ellipsis, never fixed widths.

## Visual checks (run after a design change)

- `flutter test test/_preview/preview_shell_test.dart --dart-define=TAG=ar` (also `en`, `de`,
  `hi-IN`): renders the main tabs, fails on overflow, writes `build/preview_*.png`.
  CI runs the same on every push (`.github/workflows/df-screens.yml`, screenshots as artifacts).
- `flutter test test/widget/inventory/control_inventory_test.dart`: every visible control works.
