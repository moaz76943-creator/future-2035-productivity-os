# Consultation brief for Gemini (send together with the reference image)

You are reviewing the visual redesign of **Deep Focus**, an offline Flutter study and focus app
(Android) in 71 languages, Arabic RTL first-class. Your feedback is advisory. Please be concrete.

**Reference:** the attached image ("Future Premium — Calm Light UI"): pearl/ivory backgrounds,
teal/emerald/cyan accents, soft glass cards, nature landscape art, calm typography.

**What exists today (verified in the code):**
- Central tokens: `Palette`, `AppAccents` (teal default #10787C), `ModuleHue`, `Space`, `Radii`,
  `Motion` in `lib/core/design_system/tokens.dart`; light/dark colours, shadows and fonts in
  `LuxColors`/`AppFonts`; component themes in `AppTheme.build`.
- Shared components: `LuxCard`, `GlassPanel`, `AuroraBackground`, `IconOrb`, `GlowRing`,
  `StatTile`, `LandscapePainter` (vector, no image files), `EmptyState`.
- Six bottom destinations (Home, Tasks, Focus, Flashcards, Calendar, Spaces) must all stay; a
  Google Mobile Ads banner sits under the navigation bar and must stay visible.
- Constraints: files ≤ 400 lines, no new heavy dependencies, no copyrighted assets, no images of
  living beings, privacy-first (no network except ads and optional word-pack downloads).

**Please answer:**
1. Visual assessment of the reference: strengths, weaknesses, contrast/readability risks.
2. Is the palette right for long daily use? Suggest exact hex adjustments if needed (light + dark).
3. Typography for Arabic and Latin together: families, weights, sizes, line heights.
4. How to give each screen its own personality without breaking consistency.
5. Architecture: is the token + ThemeExtension + shared-components split right? What should be
   configuration-driven, what should stay screen-specific?
6. How to make future visual changes cost the fewest code edits and AI tokens.
7. Performance risks (blur/glass, gradients, CustomPainter landscapes) and how to limit them.
8. RTL/LTR, text scaling and accessibility risks you see.
9. Conflicts between the reference and the six-destination navigation plus the ad banner.

For each suggestion, label it: Must-have / Nice-to-have, and estimate the effort (S/M/L).
