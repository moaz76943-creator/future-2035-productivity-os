part of '../app_theme.dart';

/// Extra semantic colours not covered by [ColorScheme].
@immutable
class LuxColors extends ThemeExtension<LuxColors> {
  const LuxColors({
    required this.background,
    required this.surface,
    required this.surfaceRaised,
    required this.recessed,
    required this.hairline,
    required this.ink,
    required this.ink2,
    required this.ink3,
    required this.glass,
    required this.glassBorder,
    required this.shadow,
    required this.success,
    required this.warning,
    required this.danger,
    required this.isDark,
  });

  final Color background;
  final Color surface;
  final Color surfaceRaised;
  final Color recessed;
  final Color hairline;
  final Color ink;
  final Color ink2;
  final Color ink3;
  final Color glass;
  final Color glassBorder;
  final Color shadow;
  final Color success;
  final Color warning;
  final Color danger;
  final bool isDark;

  static const light = LuxColors(
    background: Palette.porcelain,
    surface: Palette.white,
    surfaceRaised: Palette.white,
    recessed: Palette.mist,
    hairline: Palette.pearl,
    ink: Palette.navy,
    ink2: Palette.ink2,
    ink3: Palette.ink3,
    glass: Color(0xB8FFFFFF),
    glassBorder: Color(0xCCFFFFFF),
    shadow: Color(0x1A0E3A4A),
    success: Color(0xFF0E9F6E),
    warning: Color(0xFFB7791F),
    danger: Color(0xFFDC3545),
    isDark: false,
  );

  static const dark = LuxColors(
    background: Palette.abyss,
    surface: Palette.midnight,
    surfaceRaised: Palette.dusk,
    recessed: Color(0xFF060609),
    hairline: Palette.twilight,
    ink: Palette.moon,
    ink2: Palette.moon2,
    ink3: Palette.moon3,
    glass: Color(0x99121219),
    glassBorder: Color(0x33FFFFFF),
    shadow: Color(0x66000000),
    success: Color(0xFF34D399),
    warning: Color(0xFFFBBF24),
    danger: Color(0xFFFF6B7A),
    isDark: true,
  );

  @override
  LuxColors copyWith() => this;

  @override
  LuxColors lerp(ThemeExtension<LuxColors>? other, double t) {
    if (other is! LuxColors) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return LuxColors(
      background: l(background, other.background),
      surface: l(surface, other.surface),
      surfaceRaised: l(surfaceRaised, other.surfaceRaised),
      recessed: l(recessed, other.recessed),
      hairline: l(hairline, other.hairline),
      ink: l(ink, other.ink),
      ink2: l(ink2, other.ink2),
      ink3: l(ink3, other.ink3),
      glass: l(glass, other.glass),
      glassBorder: l(glassBorder, other.glassBorder),
      shadow: l(shadow, other.shadow),
      success: l(success, other.success),
      warning: l(warning, other.warning),
      danger: l(danger, other.danger),
      isDark: t < 0.5 ? isDark : other.isDark,
    );
  }
}

extension LuxThemeX on BuildContext {
  LuxColors get lux => Theme.of(this).extension<LuxColors>()!;
  TextTheme get text => Theme.of(this).textTheme;
}

/// Font family per script. Chinese uses the platform CJK font (Noto Sans
/// CJK on Android) via fallback, keeping the APK small.
/// Fonts and spacing per writing system. The language table is generated from
/// lib/l10n/languages.json (language_fonts.g.dart): a language uses a bundled
/// font only when that font has all its letters, otherwise the phone's font.
abstract final class AppFonts {
  static const latin = 'Manrope';
  static const arabic = 'ReadexPro';
  static const devanagari = 'NotoSansDevanagari';

  static String _key(Locale l) {
    final k = l.scriptCode == null ? l.languageCode : '${l.languageCode}-${l.scriptCode}';
    return _languageScripts.containsKey(k) ? k : l.languageCode;
  }

  /// ISO 15924 writing system of the app language (Latin when unknown).
  static String scriptOf(Locale l) => _languageScripts[_key(l)] ?? 'Latn';

  /// Bundled font for the language, or null for the phone's own font.
  static String? primaryFor(Locale l) =>
      _languageFonts[_key(l)] ?? (_languageScripts.containsKey(_key(l)) ? null : latin);

  /// Han characters differ between Chinese, Japanese and Korean, so each gets
  /// its own system font variant; other scripts fall back by locale.
  static List<String> fallbackFor(Locale l) => switch (scriptOf(l)) {
    'Latn' || 'Cyrl' || 'Grek' => const [arabic, devanagari, 'sans-serif'],
    'Arab' when primaryFor(l) != null => const [latin, devanagari, 'sans-serif'],
    'Deva' when primaryFor(l) != null => const [latin, arabic, 'sans-serif'],
    'Hans' => const ['Noto Sans CJK SC', 'Noto Sans SC', 'sans-serif'],
    'Hant' => const ['Noto Sans CJK TC', 'Noto Sans TC', 'sans-serif'],
    'Jpan' => const ['Noto Sans CJK JP', 'Noto Sans JP', 'sans-serif'],
    'Kore' => const ['Noto Sans CJK KR', 'Noto Sans KR', 'sans-serif'],
    _ => const ['sans-serif'],
  };

  /// Scripts with tall marks above and below need extra line height.
  static double lineHeightFactor(Locale l) {
    if (l.languageCode == 'ur') return 1.25; // Nastaliq is very tall
    return switch (scriptOf(l)) {
      'Latn' || 'Cyrl' || 'Grek' || 'Hans' || 'Hant' || 'Jpan' || 'Kore' => 1.0,
      'Mymr' || 'Tibt' => 1.25,
      _ => 1.12,
    };
  }

  /// Letter spacing (tracking) only suits separate letters: it breaks joined
  /// scripts like Arabic and the stacked marks of Thai or Devanagari.
  static bool allowsTracking(Locale l) => switch (scriptOf(l)) {
    'Latn' || 'Cyrl' || 'Grek' => true,
    _ => false,
  };
}

extension on LuxColors {
  Color silverOr(Brightness b) => b == Brightness.dark ? Palette.twilight : Palette.silver;
}
